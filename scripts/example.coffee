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

##hearはタイムラインに返納する
    robot.hear /aaa/i, (msg) ->
   
        msg.send 'bbb_msg'
        return
##respondはレスポンスに反応する
##応答も発信者に対するreply
##タイムラインに応答するsend
#    #返信
#    robot.respond /111/i, (msg) ->
#        msg.reply '222_msg'
#        return
#    robot.respond /ccc/i, (res) ->
#        res.send '555_res'
#        return
#
#    robot.respond /(.*)/i, (res) ->
#        msg.reply '333_3'
#        return
##tohohop_test
#    robot.hear /tohohop_test (.*)/i, (res) ->
#        res.send res.match[1]