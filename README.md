slack4adium
==============
Adium protocol plugin to support Slack instant messaging

[![Build Status](https://travis-ci.org/victori/slack4adium.svg?branch=master)](https://travis-ci.org/victori/slack4adium)

Download
========
Get the latest version [here](https://github.com/victori/slack4adium/releases/)

Thanks
======
* This plugin is an adium wrapper around the libpurple plugin [slack-libpurple (web)](https://github.com/dylex/slack-libpurple) from [Dylex](https://github.com/dylex)


### How to build yourself

1. Checkout this git repository and init submodules

   `git clone https://github.com/victori/slack4adium.git`
   `git submodule update --init`

2. Compile Adium:

   `cd adium; make`

3. Compile the plugin:

   `xcodebuild -configuration Release -project "slack4adium.xcodeproj"`
