module.exports = (robot) -&gt;
    robot.hear /お腹すいたなぁ/i, (msg) -&gt;
        msg.send '気のせいですよ'
        return
    robot.respond /今日は疲れちゃったよ/i, (msg) -&gt;
        msg.reply 'それは大変、早く寝ましょう'
        return