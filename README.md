# Package creation for ArchLinux
This is a project for building ArchLinux packages in a build environment within a Docker container.

## Building the docker build environment
Before building you should ensure you have the latest ArchLinux build environment.
Go into `./buildenv_docker` and run `build.sh`. This will fetch the latest [official archlinux image](https://hub.docker.com/_/archlinux).
You will now have a image named `buildenv`

## Bulding a package
Go into a package directory and run `build.sh`.
If successfull the built package will end up in a directory named `output` in the package directory.

## Install a built package
To install a built package, run the following command:
`pacman -U PACKAGENAME.pkg.tar.zst`
