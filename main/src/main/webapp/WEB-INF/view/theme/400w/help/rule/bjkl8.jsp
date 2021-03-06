<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp"/>
<c:import url="../../common/checkIsChildFrame.jsp" />
<c:import url="../../index/top.jsp"/>

<div class="men_list">
    <div class="wid1">
        <div class="logo">
            <a href="<%=basePath%>"><img style="max-height: 50px;" src="<%=basePath%>static/theme/400w/images/pclogo.png?v=0.001" alt=""></a>
        </div>
        <c:import url="../../common/navList.jsp"/>
    </div>
</div>

<div class="main wi">
    <c:import url="../common/left.jsp">
        <c:param name="navGroup" value="1" />
        <c:param name="playGroupId" value="8" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp"/>
        <c:import url="../common/right.jsp"/>

        <div class="help_list">
            <div class="lis">
                <h5>北京快乐8</h5>
                <ul>
                    <li class="sli">常规玩法</li>
                    <li>官方玩法</li>
                    <li>开奖规则</li>
                </ul>
            </div>
            <div class="help_col show">
                <h5><strong>规则说明</strong></h5>
                <p><strong>◎选号</strong></br>
                    选一：投注的1个号码与当期摇出的20个号码中的任1个号码相同，则中奖。<br><br>
                    选二：投注的2个号码与当期摇出的20个号码中的任2个号码相同，则中奖。<br><br>
                    选三：投注的3个号码为一组合，若其中2个是开奖中的号码，即为三中二，视为中奖；若3个都是开奖中的号码，即为三中三，其余情形视为不中奖。<br><br>
                    选四：投注的4个号码为一组合，若其中2个是开奖中的号码，即为四中二，视为中奖；若其中3个是开奖中的号码，即为四中三；若4个都是开奖中的号码，即为四中四，其余情形视为不中奖。<br><br>
                    选五：投注的5个号码为一组合，若其中3个是开奖中的号码，即为五中三，视为中奖；若其中4个号码是开奖中的号码，即为五中四；若5个都是开奖中的号码，即为五中五，其余情形视为不中奖。</p>
                <p><strong>◎和值</strong></br>
                    以所有开出的全部20个号码加起来的和值来判定。<br>
                    总单/双：20个号码加总的和值为单，叫做和单；20个号码加总的和值为双，叫做和双。<br>
                    总大/小：20个号码加总的和值大于810，为和大；20个号码加总的和值小于810，则为和小。<br>
                    和值810：20个号码加总的和值等于810，叫和值810。<br>
                    ※举例：开奖号码为1，2，3，4，5，6，7，8，9，10，11，12，13，14，15，16，17，18，19，20；那么此20个开奖号码的和值总和为210，则为小，为双。则投注小和双者中奖。投注大、单、和值810者不中奖。</p>
                <p><strong>◎上中下盘</strong></br>
                    上下盘：开奖号码1至40为上盘号码，41至80为下盘号码。<br>
                    开出的20个号码中：如上盘号码（1-40）在此局开出号码数目占多数时，此局为上盘；<br>
                    下盘号码（41-80）在此局开出号码数目占多数时，此局为下盘；<br>
                    上盘号码（1－40）和下盘号码（41-80）在此局开出的数目相同时（各10个数字），此局为中盘。<br>
                    ※举例：此局开出1，2，3，4，5，6，7，8，9，10，11，12，13，14，15，16，17，18，19，20. 此局为上盘。<br>
                    ※举例：此局开出41，42，43，44，45，46，47，48，49，50，51，52，53，54，55，56，57，58，59，60 此局为下盘。<br>
                    ※举例：此局开出 1，2，3，4，5，6，7，8，9，10，41，42，43，44，45，46，47，48，49，50 此局为中盘。</p>
                <p><strong>◎奇偶和盘</strong></br>
                    开奖号码中1，3，5，7，…，75，77，79为奇数号码，2，4，6，8，……，76，78，80为偶数号码。 当期开出的20个中奖号码中，如奇数号码数目占多数时（超过10个），则为奇盘，投注奇者中奖； 偶数号码占多数时（超过10个），则为偶盘，投注偶者中奖； 如果奇数和偶数号码数目相同时（均为 10个），则为和，投注和者中奖。<br>
                    ※举例：此期开出1，3，5，7，9，11，13，15，17，19，21，22，24，26，28，30，32，34，46，68， 其中奇数11个偶数9个，此期为奇盘。<br>
                    ※举例：此期开出2，4，6，8，10，12，14，16，44，48，66，68，25，27，31，35，37，39，41，55， 其中偶数12个奇数8个，此期为偶盘。<br>
                    ※举例：此期开出2，4，6，8，10，12，14，16，18，20，41，43，45，47，49，51，53，55，57，59， 其中奇数10个偶数10个，此期为和。</p>
                <p><strong>◎五行</strong></br>
                    开出的20个号码的总和分在5个段，以金、木、水、火、土命名：金（210～695）、木（696～763）、水（764～855）、火（856～923）和土（924～1410）。<br>
                    ※举例：开奖号码为01、04、05、10、11、13、20、27、30、32、33、36、40、47、54、59、61、64、67、79，总和是693，则总分数在210－695段内，则开出的是「金」。下注「金」为赢，反之则输。</p>
            </div>
            <div class="help_col">
                <h5>筹备中</h5>
            </div>
            <div class="help_col">
                <h5><strong>总则</strong></h5>
                <p>北京快乐8 是依照北京福彩网发行的北京快乐8的官方开奖结果所规划的游戏。由1至80的号码中随机摇出20个数字作为开奖号码，依这20个号码变化成各式不同的玩法，在根据彩种的号码个数或玩法可以获得不同等级的奖金。<br>
                    此游戏的开奖时间和开奖号码完全与北京福彩网发行的北京快乐8同步，每日从早上9点至晚上12点，每五分钟开奖一次，每日开奖179期。如开奖时间异动以中国福利彩票管理中心公告为准。<br> 本公司北京快乐8具体游戏规则请参考彩种介绍。<br></p>
            </div>
        </div>
    </div>
</div>

<c:import url="../../index/bottom.jsp"/>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/jsCommonLogin.jsp"/>
<c:import url="../common/bottom.jsp" />
<c:import url="../../common/bodyEnd.jsp"/>