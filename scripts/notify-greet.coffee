# Description:
#   Notification of the study meeting.

cronJob = require('cron').CronJob
module.exports = (robot) ->
  new cronJob('0 30 8 * * 1-5', () =>
    roomIds = process.env.HUBOT_CHATWORK_ROOMS.split(",")
    for roomId, i in roomIds
      envelope = room: roomId
      robot.send envelope, "おはようございます"
  ).start()