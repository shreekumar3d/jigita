# -*- mode: python ; coding: utf-8 -*-

# spec file to use with pyinstaller
#
# Use as
# $ /path/to/pyinstaller pyinstaller.spec
#
# Note: running pyinstaller directly on jigit will generate jigit.spec!
#
# Package some dlls that are listed in Warnings at startup
# (see end of file for details of warnings)
#
base_path = r'C:\Users\admin\AppData\Local\Programs\KiCad\8.0\bin\Lib\site-packages'
lib_files = [
    'pymeshlab\external-glew.dll',
    'pymeshlab\meshlab-common.dll',
    'pymeshlab\Qt5Core.dll',
    'pymeshlab\Qt5Xml.dll',
    'pymeshlab\Qt5Gui.dll',
    'pymeshlab\Qt5OpenGL.dll',
    'pymeshlab\Qt5Widgets.dll',
]

missing_libs = [ (os.path.join(base_path, x), 'dlls') for x in lib_files]
print(missing_libs)

a = Analysis(
    ['jigit'],
    pathex=[],
    binaries=missing_libs,
    datas=[],
    hiddenimports=[],
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[],
    noarchive=False,
    optimize=0,
)
pyz = PYZ(a.pure)

exe = EXE(
    pyz,
    a.scripts,
    [], #[('W ignore', None, 'OPTION')], # disable pesky warnings doesn't work
    exclude_binaries=True,
    name='jigit',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=True,
    console=True,
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
)
coll = COLLECT(
    exe,
    a.binaries,
    a.datas,
    strip=False,
    upx=True,
    upx_exclude=[],
    name='jigit',
)

# At startup, jigit.exe is throwing following messages. Haven't been able to
# eliminate these yet.
#
#Warning:
#Unable to load the following plugins:
#
#        external-glew.dll: external-glew.dll does not seem to be a Qt Plugin.
#
#Failed to extract plugin meta data from 'C:/dev/jigita/dist/jigit/_internal/pymeshlab/external-glew.dll'
#        meshlab-common.dll: meshlab-common.dll does not seem to be a Qt Plugin.
#
#Failed to extract plugin meta data from 'C:/dev/jigita/dist/jigit/_internal/pymeshlab/meshlab-common.dll'
#        Qt5Core.dll: Qt5Core.dll does not seem to be a Qt Plugin.
#
#Failed to extract plugin meta data from 'C:/dev/jigita/dist/jigit/_internal/pymeshlab/Qt5Core.dll'
#        Qt5Gui.dll: Qt5Gui.dll does not seem to be a Qt Plugin.
#
#Failed to extract plugin meta data from 'C:/dev/jigita/dist/jigit/_internal/pymeshlab/Qt5Gui.dll'
#        Qt5OpenGL.dll: Qt5OpenGL.dll does not seem to be a Qt Plugin.
#
#Failed to extract plugin meta data from 'C:/dev/jigita/dist/jigit/_internal/pymeshlab/Qt5OpenGL.dll'
#        Qt5Widgets.dll: Qt5Widgets.dll does not seem to be a Qt Plugin.
#
#Failed to extract plugin meta data from 'C:/dev/jigita/dist/jigit/_internal/pymeshlab/Qt5Widgets.dll'
#        Qt5Xml.dll: Qt5Xml.dll does not seem to be a Qt Plugin.
#
#Failed to extract plugin meta data from 'C:/dev/jigita/dist/jigit/_internal/pymeshlab/Qt5Xml.dll'
