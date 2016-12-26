Mecab = require 'mecab-async'
mecab = new Mecab()

Mecab.command = "mecab"


module.exports = (robot) ->
  robot.respond /mecab\s+(.*)/i, (msg) ->
    mecab.parse msg.match[1], (err, result) ->
      console.log err
      console.log result
      readings = []
      for token in result
        readings.push(token + '\n')
      console.log readings
      msg.send readings