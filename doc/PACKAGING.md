# Windows

Jigit can be packaged as a single file executable, with all dependencies.

Single EXE eliminates the need for having a local installation of KiCAD
to use the tool.  While the resultant binary is large (~200 MB), it may be
used directly.

## Setup dependencies

First, install KiCAD 8.0 for your own user (not for "everyone") - this installs
inside user directory. This has the internal python interpreter that we'll 
use for packaging.

Next, install the dependent packages using "python -m pip". Take care to use
the Python from the KiCAD installation directory. E.g., for if your user name
is "admin", you would use

    C:\Users\admin\AppData\Local\Programs\KiCad\8.0\bin\python -m pip install <package_name>

You can roughly use the following sequence to install the dependencies:

    pip install appdirs
    pip install pyclipr
    pip install toml
    pip install trimesh[easy]
    pip install rectpack
    pip install python_tsp
    pip install SolidPython2
    pip install -U pyinstaller

## Redistributable EXE

pyinstaller can now create a single file redistributable EXE in one step:

    \path\to\KiCad\8.0\bin\scripts\pyinstaller jigit --onefile --collect-all=pymeshlab --collect-all=numpy

The output dist\jigit.exe file can be copied to any windows system.

Users will need external dependencies (OpenSCAD, FreeCAD) to use Jigit.
