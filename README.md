- [About](#org2de0e0a)
- [Installation](#org1514e8d)
- [Development](#orgefe0ba1)

    <!-- This file is generated automatically from metadata -->
    <!-- File edits may be overwritten! -->


<a id="org2de0e0a"></a>

# About

```markdown
- Python Package Name: kicad_netlist_reader
- Description: KiCad python module for interpreting generic netlists which can be used to generate bills of materials.
- Version: 7.0.1
- Python Version: 3.9
- Release Date: 2023-03-29
- Creation Date: 2014-12-09
- License: GPL-3.0
- URL: https://github.com/janelia-pypi/kicad_netlist_reader
- Author: Jean-Pierre Charras
- Email: jean-pierre.charras@wanadoo.fr
- Copyright: 2023 KiCad
- References:
  - https://gitlab.com/kicad/code/kicad
```


<a id="org1514e8d"></a>

# Installation

<https://github.com/janelia-pypi/python_setup>


## GNU/Linux


### Python Code

The Python code in this library may be installed in any number of ways, chose one.

1.  pip

    ```sh
    python3 -m venv ~/venvs/kicad_netlist_reader
    source ~/venvs/kicad_netlist_reader/bin/activate
    pip install kicad_netlist_reader
    ```

2.  guix

    Setup guix-janelia channel:
    
    <https://github.com/guix-janelia/guix-janelia>
    
    ```sh
    guix install python-kicad-netlist-reader
    ```


## Windows


### Python Code

The Python code in this library may be installed in any number of ways, chose one.

1.  pip

    ```sh
    python3 -m venv C:\venvs\kicad_netlist_reader
    C:\venvs\kicad_netlist_reader\Scripts\activate
    pip install kicad_netlist_reader
    ```


<a id="orgefe0ba1"></a>

# Development


## Clone Repository

```sh
git clone git@github.com:janelia-pypi/kicad_netlist_reader.git
cd kicad_netlist_reader
```


## Guix


### Install Guix

[Install Guix](https://guix.gnu.org/manual/en/html_node/Binary-Installation.html)


### Edit metadata.org

```sh
make -f .metadata/Makefile metadata-edits
```


### Tangle metadata.org

```sh
make -f .metadata/Makefile metadata
```


### Develop Python package

```sh
make -f .metadata/Makefile guix-dev-container
exit
```


### Test Python package using ipython shell

```sh
make -f .metadata/Makefile guix-dev-container-ipython
import kicad_netlist_reader
exit
```


### Test Python package installation

```sh
make -f .metadata/Makefile guix-container
exit
```


### Upload Python package to pypi

```sh
make -f .metadata/Makefile upload
```