# Redstone-Arsenal

Redstone Arsenal is a collection of open source utilities to help you run your Minecraft server more efficiently.

TODO: Describe each module here and link to individual module documentation

## Getting the latest build

TODO: Write this section

## Building from source

### Prerequisites

* [Node](http://nodejs.org/)
* [Sass](http://sass-lang.com/)

### Build from source

We use [Grunt](http://gruntjs.com/) to manage all of our build tasks and [Bower](http://bower.io/) to manage our Javascript libraries. Grunt will be installed as one of the dev dependencies but Bower and the Grunt CLI should be installed globally. Make sure you have the prequisites installed, clone the repository, and install the dev dependencies:

    npm install -g bower grunt-cli
    git clone https://github.com/trezy/Redstone-Arsenal.git
    cd Redstone-Arsenal
    npm install
    bower install

We're using [Vagrant](http://vagrantup.com) and [Ansible](http://ansibleworks.com) to provision a virtual machine for testing. Make sure you have both of those installed, then go to the project directory and run `vagrant up`. You'll now be able to check out your build at http://localhost:8080. Since the Vagrant box is pointing at your local `/build` folder, it'll show your changes everytime you refresh.

To make sure you don't have to touch configuration again you can run the watch script to update the project everytime you change a file:

    grunt watch

## Changelog

### v0.1
We're just getting started!
