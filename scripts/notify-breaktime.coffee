# Description:
#   Notification of the study meeting.

cronJob = require('cron').CronJob
module.exports = (robot) ->
  new cronJob('0 0 15 * * 1-5', () =>
    roomIds = process.env.HUBOT_CHATWORK_ROOMS.split(",")
    for roomId, i in roomIds
      envelope = room: roomId
      robot.send envelope, "15時です.休憩しましょう!"
  ).start()