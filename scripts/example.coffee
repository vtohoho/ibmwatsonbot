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

##hear�ϥ�����饤�����Ǽ����
    robot.hear /aaa/i, (msg) ->
   
        msg.send 'bbb_msg'
        return
##respond�ϥ쥹�ݥ󥹤�ȿ������
##������ȯ���Ԥ��Ф���reply
##������饤��˱�������send
#    #�ֿ�
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