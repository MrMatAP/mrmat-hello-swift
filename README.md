# MrMat :: Hello Swift

Experiments in native Swift.

[![Build](https://github.com/MrMatAP/mrmat-hello-swift/actions/workflows/build.yml/badge.svg)](https://github.com/MrMatAP/mrmat-hello-swift/actions/workflows/build.yml)

> This is a native Swift project, not an XCode project. You can therefore not add additional things to it beyond Swift itself

## How to use this

This repository serves as a demonstration on how to get a Swift project on its feet. There is currently nothing truly functional demonstrated except for a reasonable CI process.

## How to build this

### Interactively

Just hit the Play button in XCode.

### As part of a CI build

GitHub Actions will trigger a build upon a push and as part of a pull request. If the build is the result of a merge onto the main branch then it is considered to be a
release build which will cause a tag to be created.

The build version is relayed via the 'MRMAT_VERSION' environment variable from the 'MAJOR', 'MINOR' operational
variables as well as the 'GITHUB_RUN_NUMBER'. 'MAJOR' and 'MINOR' are meant to be adjusted manually because those are
conscious version bumps that are expected to happen far less frequently than individual builds. The 'GITHUB_RUN_NUMBER'
is injected by GitHub Actions itself, resulting in a discrete version of the product for each build.

> The calculated version in 'MRMAT_VERSION' is currently not relayed into the product itself. The code itself
> is therefore unaware of its version.
