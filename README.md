# Knock

Convert ACSM files to DRM-free ePub files using one command.

TODO: add gif

## Setup and Installation

1. Create a free Adobe account [here](https://account.adobe.com) if you do not already have one.
1. Install the software.
    * For NixOS, include this flake in your system `flake.nix`.
        ```nix
        inputs.knock.url = github:BentonEdmondson/knock
        outputs = { self, knock }: { /* knock.defaultPackage.x86_64-linux is the package */ }
        ```
    * For non-NixOS, download the latest [release](https://github.com/BentonEdmondson/knock/releases). It is large because it includes all dependencies, allowing it to run on any system with an x86_64 Linux kernel. It was built using [`nix bundle`](https://nixos.org/manual/nix/unstable/command-ref/new-cli/nix3-bundle.html).
1. Download the ACSM file from wherever you bought the book.
1. Run `knock my-book.acsm`. Enter your Adobe username and password if prompted.

## Dependencies

* [`libgourou-utils`](https://github.com/BentonEdmondson/libgourou-utils) for using the ACSM file to download the corresponding encrypted ePub file from Adobe's servers
* [`inept-epub`](https://github.com/BentonEdmondson/inept-epub/) for decrypting the ePub file

## Verified Book Sources

Knock has been verified to work on books provided by the following
* [eBooks.com](https://www.ebooks.com/en-us/), as long as the description says
    > To download and read this eBook on a PC or Mac:
    > * Adobe Digital Editions (This is a free app specially developed for eBooks. It's not the same as Adobe Reader, which you probably already have on your computer.)

The resulting ePub file can be read with any ePub reader.

## Legality

[It's Perfectly Legal to Tell People How to Remove DRM](https://gizmodo.com/its-perfectly-legal-to-tell-people-how-to-remove-drm-1670223538) (Gizmodo)

## [The Name](https://roll20.net/compendium/dnd5e/Knock#content)

> ### Knock
> *2nd level transmutation*\
> **Casting Time**: 1 action\
> **Range**: 60 feet\
> **Components**: V\
> **Duration**: Instantaneous\
> **Classes**: Bard, Sorcerer, Wizard\
> Choose an object that you can see within range. The object can be a door, a box, a chest, a set of manacles, a padlock, or another> object that contains a mundane or magical means that prevents access. A target that is held shut by a mundane lock or that is stuck or barred becomes unlocked, unstuck, or unbarred. If the object has multiple locks, only one of them is unlocked. If you choose a target that is held shut with arcane lock, that spell is suppressed for 10 minutes, during which time the target can be> opened and shut normally. When you cast the spell, a loud knock, audible from as far away as 300 feet, emanates from the target object.

