module.exports = (robot) -&gt;
    robot.hear /��ʢ�������ʤ�/i, (msg) -&gt;
        msg.send '���Τ����Ǥ���'
        return
    robot.respond /������������ä���/i, (msg) -&gt;
        msg.reply '��������ѡ��᤯���ޤ��礦'
        return