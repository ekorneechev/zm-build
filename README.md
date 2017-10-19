# zm-build

## Introduction

This repository contains the build script and supporting files required to create a [FOSS](https://en.wikipedia.org/wiki/Free_and_open-source_software) build of the [Zimbra Collaboration Suite](https://www.zimbra.com/) on AltLinux (branch Sisyphus). 

## Overview

* `build.pl` - Invoke this script to produce a build.  See the *Building* section 
  below for an example.
* `instructions/`
    * `FOSS_remote_list.pl` - Maps between remote label and URL
    * `FOSS_repo_list.pl` - Specifies which branches (or tags) are checked out to
      build each component repository.
    * `FOSS_staging_list.pl` - defines the staging order and details.

## Setup

    $ su -
    # apt-get update
    # apt-get install git gcc5-c++ maven ant ant-junit ruby wget rpm-utils java-1.8.0-openjdk java-1.8.0-openjdk-devel perl-IPC-Cmd
    # ln -s /usr/lib/jvm/java /usr/local/java
    # ln -s /usr/share/ant /usr/local/ant
    # ln -s /usr/lib/rpm/brp.d/032-compress.brp /usr/lib/rpm/brp-compress

## Building

Create a directory for your build and check-out the `zm-build` repository:

    $ mkdir installer-build
    $ cd installer-build
    $ git clone https://github.com/ekorneechev/zm-build.git
    $ cd zm-build
    $ git checkout 8.8.4

The `build.pl` command is used to build the product. Run it with the `-h` option for help:

    Usage: ./build.pl <options>
    Supported options:
       --build-no=i
       --build-ts=i
       --build-artifacts-base-dir=s
       --build-sources-base-dir=s
       --build-release=s
       --build-release-no=s
       --build-release-candidate=s
       --build-type=s
       --build-thirdparty-server=s
       --build-prod-flag!
       --build-debug-flag!
       --build-dev-tool-base-dir=s
       --interactive!
       --git-overrides=s%
       --git-default-tag=s
       --git-default-remote=s
       --git-default-branch=s
       --stop-after-checkout!

Primarily you must:

    $ export RPM_BUILD_ROOT="$HOME/RPM/BUILD"
    
Then just run `./build.pl`.

You _can_ specify all the options on the command-line, as follows:

    ./build.pl --build-no=1001 --build-ts=`date +'%Y%m%d%H%M%S'` \
      --build-release=JUDASPRIEST --build-release-no=8.8.4 \
      --build-release-candidate=GA --build-type=FOSS \
      --build-thirdparty-server=files.zimbra.com --no-interactive

The completed build will be archived into a `*.tgz` file that is stored in the appropriate platform and release-specific
subdirectory of the `BUILDS` directory.  The above command, run on an AltLinux machine, created the following:

    ../BUILDS/ALT_64-JUDASPRIEST-884-20170322153033-FOSS-1001/zcs-8.8.4_1001.ALT_64.20170322153033.tgz

You can also specify any or all of the required options by placing them in a file
called `config.build`.  This file should be at the top level of the `zm-build`
directory.  For example:

    BUILD_NO                    = 1001
    BUILD_RELEASE               = JUDASPRIEST
    BUILD_RELEASE_NO            = 8.8.4
    BUILD_RELEASE_CANDIDATE     = GA
    BUILD_TYPE                  = FOSS
    BUILD_THIRDPARTY_SERVER     = files.zimbra.com
    INTERACTIVE                 = 0

## Installing

    su -
    cd <path_to_archive>
    tar xzf zcs-8.8.4_1001.ALT_64.20170322153033.tgz
    mv zcs-8.8.4_1001.ALT_64.20170322153033 zcs
    cd zcs
    ./install.sh
