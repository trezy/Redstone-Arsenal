# Redstone-Arsenal

## Why Redstone Arsenal?

Most Minecraft hosting servers provide tools that help you manage your server and/or help you to set up a website to keep your players in the loop. However none of those tools ever seem prepared to work together. What's more, these tools aren't particularly easy to use! The website is forced and lacks any integration with the game. The admin panel requires everything to be perfectly in sync lest it crash. If you're running a large server with tons of players, or even if you're just running a server for your friends and don't want to worry about the problems that come along with Minecraft hosting, these issues are *not* okay.

Redstone Arsenal is an application built by *actual web developers* with the goal of removing that disparity and improving the experience for both Minecraft server admins and their players.

## Modules

TODO: Describe each module and link to its documentation.

## Building from source

There are a few prerequisites to build the project:

* [Node](http://nodejs.org/)
* [Sass](http://sass-lang.com/)
* [Grunt](http://gruntjs.com/)
* [Bower](http://bower.io/)

These are optional but if you want to run the pre-configured server you'll need to install:

* [Vagrant](http://vagrantup.com)
* [Ansible](http://ansibleworks.com)

To build the project for the first time, run the `build.sh` script in the root of the project. The build script uses Vagrant and Ansible to provision a virtual machine for testing so make sure you have both of those installed first. If you're not planning to use the virtual machine you can run the build script with the `--novm` option. This will make sure you have Grunt and Bower installed globally, install the main dev dependencies with Node/npm, install the Javascript dependencies with Bower, run the Grunt build process to build the initial files, and set up your Vagrant virtual machine.

Once the build script finishes - it could take some time - you're project is almost ready. Go to the project directory and run `vagrant up` to start the virtual machine. You'll now be able to check out your build at http://localhost:8080. Since the Vagrant box is pointing at your local `/build` folder, it'll show your changes everytime you refresh.

To make sure you don't have to touch configuration again you can run the watch script to update the project everytime you change a file:

    grunt watch

## Changelog

### v0.1
We're just getting started!
