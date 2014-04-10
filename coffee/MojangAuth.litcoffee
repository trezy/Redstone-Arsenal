# MojangAuth

This class handles using the Mojang authentication API to verify login information. Redstone Arsenal uses this API to allow players to log in without creating a new account.

    class MojangAuth
      constructor: (@username, @password) =>
        @authData =
          username: @username
          password: @password

        @authData.clientToken = arguments[2] if arguments[2]

        @authRequest()


      authRequest: =>
        $.ajax(
          url: 'https://authserver.mojang.com/authenticate'
          type: 'post'
          contentType: 'application/json'
          data: @authData
        )