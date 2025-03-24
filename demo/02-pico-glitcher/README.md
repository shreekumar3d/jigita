# Pico Glitcher

[fault-injection-library](https://github.com/MKesenheimer/fault-injection-library)
is an interesting project. It provides a python library to perform fault injection
attacks on microcontrollers.  Also includes PicoGlitcher - hardware based on a RPi
Pico for fault injection. [PicoGlitcher v1](https://www.tindie.com/products/faulty-hardware/picoglitcher-v1-pcb-only/)
and [PicoGlitcher v2](https://www.tindie.com/products/faulty-hardware/picoglitcher-v2/)
are both available.

The v1 variant has many headers and a 2 SMA connectors. This board caught my eye as
a good community board to test with. I was able to generate a jig for this. (The
project has some jigs to assist soldering too, likely designed manually)

First, get the design files:

    git clone https://github.com/MKesenheimer/fault-injection-library.git

(tested with git commit 0122cd1d)

Next, generate the jig using jigit:

    jigit \
      -i fault-injection-library/schematics/kicad/pico-glitcher-v1/pico-glitcher-v1.1.kicad_pcb \
      -c pico-glitcher.toml \
      -o jigs/pico-glitcher-jig.3mf

If you print this jig, this is how your workflow would look. Keep the jig on a table,
insert the headers into their slots (single pin headers included), pop in the PCB,
and solder away!

<img src="fitting/pico-glitcher-jig-usage.gif" width="800" />

Note that the SMA connectors are missing in the jig. The footprints in
the design files do not refer to the 3D models for these connectors. Due to this,
jigit cannot compute the holders for those.

The settings in [pico-glitcher.toml](pico-glitcher.toml) generates a sparse jig
to save material and print time. A thin jig makes it possible to easily locate
fitment issues - plastic will flex something isn't sitting well. The jig also
supports the PCB at the edges.

Perfection of component fitting can be verified from the sides. You may also
check the fitment by opening this file
[fitting/pico-glitcher-v1.1-with-jig.FCStd](fitting/pico-glitcher-v1.1-with-jig.FCStd)
in FreeCAD.