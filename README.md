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

These are optional but if you want to run the pre-configured server you'll ned to install:

* [Vagrant](http://vagrantup.com)
* [Ansible](http://ansibleworks.com)

We use Grunt to manage all of our build tasks and Bower to manage our Javascript libraries. Grunt will be installed as one of the dev dependencies but Bower and the Grunt CLI should be installed globally. Make sure you have the prequisites installed, clone the repository, and install the dev dependencies:

    git clone https://github.com/trezy/Redstone-Arsenal.git
    cd Redstone-Arsenal
    npm install
    bower install

We're using Vagrant and Ansible to provision a virtual machine for testing. Make sure you have both of those installed, then go to the project directory and run `vagrant up`. You'll now be able to check out your build at http://localhost:8080. Since the Vagrant box is pointing at your local `/build` folder, it'll show your changes everytime you refresh.

To make sure you don't have to touch configuration again you can run the watch script to update the project everytime you change a file:

    grunt watch

## Changelog

### v0.1
We're just getting started!
