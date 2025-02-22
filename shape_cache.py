import os
import appdirs
import pathlib
import pickle
from pprint import pprint
import hashlib

import jigcommon

_bid_map = {}
_fp_bid_map = {}


def is_up_to_date(cfg, metadata):
    # metadata has a property type, list of filenames, and property values for
    # each filename.
    # property is either mtime (last modified time) or md5sum(of file contents)a
    c_algo = cfg["cache"]["method"]
    for props in metadata["files"]:
        filename = props["file"]
        ts = props["ts"]
        csum = props["hash"]
        full_path = os.path.expandvars(filename)
        if c_algo == "timestamp":
            f_mtime = os.path.getmtime(full_path)
            if f_mtime != ts:  # mismatch is a good test. before/after is moot
                return False
        elif c_algo == "hash":
            f_md5 = hashlib.md5(open(full_path, "rb").read()).hexdigest()
            if f_md5 != csum:  # mismatch is proof with checksum
                return False
    return True


def _ensure_dir_exists(path):
    dirent = pathlib.Path(path)
    if not dirent.exists():
        dirent.mkdir(parents=True, exist_ok=True)


def get_cache_dir():
    cachedir = appdirs.user_cache_dir(jigcommon.APP_NAME)
    _ensure_dir_exists(cachedir)
    return cachedir


def get_fp_dir(ns, footprint, bid):
    """ns is a 'namespace'"""
    cachedir = get_cache_dir()
    fp_dir = os.path.join(cachedir, ns)
    for part in footprint.split(":"):
        fp_dir = os.path.join(fp_dir, part)
    _ensure_dir_exists(fp_dir)
    return os.path.join(fp_dir, bid)


def get_cached_bid(cfg, ns, bid, footprint):
    global _bid_map
    if bid in _bid_map:
        return _bid_map[bid]["value"]
    entry_path = get_fp_dir(ns, footprint, bid)

    # cache "enabled" implies access to filesystem,
    # for repeated use across program invocations
    # An in-memory cache is always active. Thus
    # a "shape" is processed only once.
    if cfg["cache"]["enabled"]:
        if pathlib.Path(entry_path).exists():
            with open(entry_path, "rb") as f:
                # print('Loading from : ', entry_path)
                cval = pickle.load(f)
                if is_up_to_date(cfg, cval["metadata"]):
                    add_cached_bid(
                        cfg, ns, bid, cval["value"], cval["metadata"], footprint
                    )
                    return cval["value"]
                else:
                    return None
    return None


def add_cached_bid(cfg, ns, bid, value, metadata, footprint):
    global _bid_map, _fp_bid_map
    _bid_map[bid] = {"metadata": metadata, "value": value}

    if footprint not in _fp_bid_map:
        _fp_bid_map[footprint] = [bid]
    elif bid not in _fp_bid_map[footprint]:
        _fp_bid_map[footprint].append(bid)

    entry_path = get_fp_dir(ns, footprint, bid)
    if cfg["cache"]["enabled"]:
        with open(entry_path, "wb") as f:
            # print('Saving to : ', entry_path)
            pickle.dump(_bid_map[bid], f)


def get_fp_duplicates():
    dup_fp = {}
    for fp_name in _fp_bid_map:
        if len(_fp_bid_map[fp_name]) > 1:
            dup_fp[fp_name] = len(_fp_bid_map[fp_name])
    return dup_fp
