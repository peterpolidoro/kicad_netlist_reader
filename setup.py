import pathlib
import codecs
import setuptools


here = pathlib.Path(__file__).resolve().parent

with codecs.open(here.joinpath('DESCRIPTION.rst'), encoding='utf-8') as f:
    long_description = f.read()

setuptools.setup(
    name='kicad_netlist_reader',

    version = '5.1.11',

    description='KiCad python module for interpreting generic netlists.',
    long_description=long_description,

    url='https://github.com/janelia-pypi/kicad_netlist_reader',

    author='Jean-Pierre Charras',
    author_email='jean-pierre.charras@gipsa-lab.inpg.fr',

    license='GPL',

    classifiers=[
        'Development Status :: 5 - Production/Stable',

        'Intended Audience :: Developers',
        'Topic :: Software Development :: Build Tools',

        'License :: OSI Approved :: GNU General Public License v3 or later (GPLv3+)',

        'Programming Language :: Python :: 3',
    ],

    keywords='kicad netlist',

    packages=setuptools.find_packages(exclude=['contrib', 'docs', 'tests*']),

    install_requires=[
    ],
)
