# Namespacing the application

All of the Javascript for the application will be stored in the `RedstoneArsenal` global variable to prevent collisions between our application and any other Javascript that may be running.

    RedstoneArsenal = RedstoneArsenal || {}

## Initialize the application

`$` is the alias for the jQuery object. The line below is a shorthand version of `$ document.ready ->` or `$(document).ready(function(){ /* code to execute */ })` which allows us to prevent the application from initializing until the browser has downloaded all of the necessary files.

Once the document is finally ready we'll trigger the `init` event on our namespace. This event tells all of the `RedstoneArsenal` modules that we're ready for them to start.

    $ ->
      RedstoneArsenal.trigger 'init'
