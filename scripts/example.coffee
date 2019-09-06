# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->
  status  = {}
 
  robot.respond /(.*)/i, (res) ->
    message = res.match[1]
    return if message is ''
 
    res
      .http('https://heroku-line-bot9999.mybluemix.net/.mybluemix.net/lineWebhook')
      .headers('Content-Type': 'application/json')
      .post(JSON.stringify({ text: message})) (err, response, body) ->
        if err?
          console.log "Encountered an error #{err}"
        else
          data = JSON.parse(body);
          res.send data["top_class"]

#https://line-bot-9998.mybluemix.net/lineWebhook
#https://heroku-line-bot9999.mybluemix.net/

#    url='https://gateway.watsonplatform.net/assistant/api',
#    iam_apikey='YOUR APIKEY')
