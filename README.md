# Silvie

Silvie is an asset extractor for Silver, an action RPG from 1999 developed by Spiral House.

````
$ silvie
This is Silvie, an asset extractor for Silver.
The following formats are supported:

        chr     3D model, saves as a 3DS file and a GIF file
        eng     Dialog text, saves as an XML file
        raw     Raw image, saves as a GIF file
        spr     Spritesheet, saves as GIF files

For usage information on a given format, type:

        silvie format
````


## Dependencies

* libgif for saving GIF files
* lib3ds for saving 3DS files
* libglu for polygon triangulation

You should be able to install the required dependencies on a debian-like distribution using apt-get:

````
$ apt-get install libgif-dev lib3ds-dev libglu1-mesa-dev
````


## Installation

Once the required dependencies are installed, you can use a C11-compliant compiler to build Silvie:

````
$ gcc *.c -o silvie -std=c11 -lgif -l3ds -lGLU -lGL
````