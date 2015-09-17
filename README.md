kicad_netlist_reader
====================

KiCad python module for interpreting generic netlists which can be
used to generate Bills of materials, etc. Simple repackaging of the
original Kicad source file.

Authors:

    Jean-Pierre Charras <jean-pierre.charras[at]gipsa-lab-dot-inpg-dot-fr>

Package Maintainers:

    Peter Polidoro <peterpolidoro@gmail.com>

License:

    GPL

Note that this repository contains submodules. After cloning this
repository, run these commands to fetch the data from the submodules:

```shell
git submodule init
git submodule update
```

##Installation

[Setup Python](https://github.com/janelia-pypi/python_setup)

###Linux and Mac OS X

```shell
mkdir -p ~/virtualenvs/kicad
virtualenv ~/virtualenvs/kicad
source ~/virtualenvs/kicad/bin/activate
pip install kicad_netlist_reader
```

###Windows

```shell
virtualenv C:\virtualenvs\kicad
C:\virtualenvs\kicad\Scripts\activate
pip install kicad_netlist_reader
```
