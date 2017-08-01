<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div>
    <h5><strong>选号玩法</strong></h5>
    <p><strong>◎一字定位</strong></br>
        于万千百十个任选一位，自0~9任选1个号进行投注，当开奖结果与所选的定位与号码相同且顺序一致时，即为中奖。</p>
    <p><strong>◎二字定位</strong></br>
        于万千百十个任选二位，自0~9任选2个号进行投注，当开奖结果与所选号码相同且顺序一致时，即为中奖。</p>
    <p><strong>◎三字定位</strong></br>
        于前三、中三、后三任选三位，自0~9任选3个号进行投注，当开奖结果与所选号码相同且顺序一致时，即为中奖。</p>
    <p><strong>◎一字组合</strong></br>
        全五：0~9任选1个号进行投注，当开奖结果[万位、千位、百位、十位、个位]任一数与所选的号码相同时，即为中奖。同个号码出现多次时只计一次中奖</br>
        ※举例：下注一字【5号】＄100，一字賠率2.05</br>
        五颗球开出1，2，3，4，5 派彩为＄105</br>
        五顆球开出1，2，3，5，5 派彩为＄210</br>
        五顆球开出1，2，5，5，5 派彩为＄315</br>
        前三：0~9任选1个号进行投注，当开奖结果[万位、千位、百位]任一数与所选的号码相同时，即为中奖。</br>
        中三：0~9任选1个号进行投注，当开奖结果[千位、百位、十位]任一数与所选的号码相同时，即为中奖。</br>
        后三：0~9任选1个号进行投注，当开奖结果[百位、十位、个位]任一数与所选的号码相同时，即为中奖。</p>
    <p><strong>◎二字组合</strong></br>
        于前三、中三、后三0~9任选2个号进行投注，当开奖结果任二数与所选的号码相同时，即为中奖。</br>
        ※举例：投注者购买后三二字组合，选择2个相同号码如为11，当期开奖结果如为xx11x、xx1x1、xxx11、皆视为中奖。（x=0~9任一数）</br>
        ※举例：投注者购买后三二字组合，选择2个不同号码如为12，当期开奖结果如为xx12x、xx1x2、xx21x、xx2x1、xxx12、xxx21皆视为中奖。</br>
        （x=0~9任一数）</br>
        【附注】：以上二例赔率不同</p>
    <p><strong>◎三字组合</strong></br>
        从0-9十个数字中任选三个不同的数字对指定位置进行投注，若所选择的号码与当期开奖号码所指定之位置相同（顺序不限），即为中奖，若是开出豹子如000、111、222、333、444、555、666、777、888、999算不中奖。
    </p>
    <p><strong>◎组选三</strong></br>
        前三：会员可以挑选5~10个号码，当开奖结果[万位、千位、百位]中有且只有两个号码重复，则视为中奖。挑选不同个数的号码有其相对应的赔率。如果是选择(1、2、3、4、5)，则只要开奖结果[万位、千位、百位]中，有出现1、2、3、4、5中的任何两个号码，且其中有一个号码重复则中奖。</br>
        ※例如：112、344，若是开出豹子则不算中奖。</br>
        ※备注："豹子"为三字同号，例如：111、222 </br>
        中三：会员可以挑选5~10个号码，当开奖结果[千位、百位、十位]中有且只有两个号码重复，则视为中奖。挑选不同个数的号码有其相对应的赔率。如果是选择(1、2、3、4、5)，则只要开奖结果[千位、百位、十位]中，有出现1、2、3、4、5中的任何两个号码，且其中有一个号码重复则中奖。</br>
        ※例如：112、344，若是开出豹子则不算中奖。</br>
        ※备注："豹子"为三字同号，例如：111、222</br>
        后三：会员可以挑选5~10个号码，当开奖结果[百位、十位、个位]中有且只有两个号码重复，则视为中奖。挑选不同个数的号码有其相对应的赔率。如果是选择(1、2、3、4、5)，则只要开奖结果[百位、十位、个位]中，有出现1、2、3、4、5中的任何两个号码，且其中有一个号码重复则中奖。</br>
        ※例如：112、344，若是开出豹子则不算中奖。</br>
        ※备注："豹子"为三字同号，例如：111、222</p>
    <p><strong>◎组选六</strong></br>
        前三：会员可以挑选4~8个号码，当开奖结果[万位、千位、百位]都出现在所下注的号码中且没有任何号码重复，则视为中奖。挑选不同个数的号码有其相对应的赔率，中奖赔率以所选号码中的最小赔率计算派彩。</br>
        ※例如：如果是选择(1、2、3、4)，则开奖结果[万位、千位、百位]为123、124、134、234都中奖，其他都是不中奖。例如：112、133、145、444等都是不中奖。</br>
        中三：会员可以挑选4~8个号码，当开奖结果[千位、百位、十位]都出现在所下注的号码中且没有任何号码重复，则视为中奖。挑选不同个数的号码有其相对应的赔率，中奖赔率以所选号码中的最小赔率计算派彩。</br>
        ※例如：如果是选择(1、2、3、4)，则开奖结果[千位、百位、十位]为123、124、134、234都中奖，其他都是不中奖。例如：112、133、145、444等都是不中奖。</br>
        后三：会员可以挑选4~8个号码，当开奖结果[百位、十位、个位]都出现在所下注的号码中且没有任何号码重复，则视为中奖。挑选不同个数的号码有其相对应的赔率，中奖赔率以所选号码中的最小赔率计算派彩。</p>
    <p><strong>◎跨度</strong></br>
        前三：以开奖结果[万位、千位、百位]的最大差距（跨度），作为中奖依据。会员可以选择0~9的任一跨度。</br>
        ※举例：开奖结果为3、4、8、7、6。中奖的跨度为5。（最大号码8减最小号码3=5）。</br>
        中三：以开奖结果[千位、百位、十位]的最大差距（跨度），作为中奖依据。会员可以选择0~9的任一跨度。</br>
        ※举例：开奖结果为3、4、8、7、6。中奖的跨度为4。（最大号码8减最小号码4=4）。</br>
        后三：以开奖结果[百位、十位、个位]的最大差距（跨度），作为中奖依据。会员可以选择0~9的任一跨度。</br>
        ※举例：开奖结果为3、4、8、7、6。中奖的跨度为2。（最大号码8减最小号码6=2）。</p>
    <h5><strong>和数玩法</strong></h5>
    <p><strong>◎前三和数</strong></br>
        开奖结果前三三位数的总和值与若投注前三数字的总和值与相同时，即为中奖。</p>
    <p><strong>◎中三和数</strong></br>
        开奖结果中三三位数的总和值与若投注中三数字的总和值与相同时，即为中奖。</p>
    <p><strong>◎后三和数</strong></br>
        开奖结果后三三位数的总和值与若投注后三数字的总和值与相同时，即为中奖。</p>
    <p><strong>◎前三和数尾数</strong></br>
        以开奖号码的总和尾数，作为中奖依据。会员可以选择0~9的任一号码。</br>
        ※举例：开奖结果为3、4、5、0、0。前三总和为12，尾数为2。</p>
    <p><strong>◎中三和数尾数</strong></br>
        以开奖号码的总和尾数，作为中奖依据。会员可以选择0~9的任一号码。</br>
        ※举例：开奖结果为0、3、4、5、0。中三总和为12，尾数为2。</p>
    <p><strong>◎后三和数尾数</strong></br>
        以开奖号码的总和尾数，作为中奖依据。会员可以选择0~9的任一号码。</br>
        ※举例：开奖结果为0、0、3、4、5。后三总和为12，尾数为2。 </p>
    <h5><strong>两面玩法</strong></h5>
    <p><strong>◎单双玩法说明</strong></br>
        开奖结果万位、千位、百位、十位或个位数字为1、3、5、7、9时为“单”，若为0、2、4、6、8时为“双”，当投注位数单双与开奖结果的位数单双相符时，即为中奖。
        ※举例：投注者购买百位单，当期开奖结果如为20130（1为单），则视为中奖。</p>
    <table width="100%">
        <tr>
            <th width="50%" valign="top" bgcolor="#AFAFE4" align="center" class="subtitle2">
                单
            </th>
            <th width="50%" bgcolor="#AFAFE4" align="center" class="subtitle2">
                双
            </th>
        </tr>
        <tr>
            <td valign="top" bgcolor="#FFF7F0" class="point" align="center">
                1、 3、 5、 7、 9
            </td>
            <td bgcolor="#FFF7F0" class="point" align="center">
                0、 2、 4、 6、 8
            </td>
        </tr>
    </table>
    <p>
        开奖结果万千位、万百位、万十位、万个位、千百位、千十位、千个位、百十位、十个位或百个位数字总和的个位数为1、3、5、7、9时为“单”，若为0、2、4、6、8时为“双”，当投注和数单双与开奖结果的和数单双相符时，即为中奖。</br>
        ※举例：投注者购买百十和数单，当期开奖结果如为20290（百2+十9+个0=11为单），则视为中奖。</p>
    <p>
    <table width="100%">
        <tr>
            <th width="50%" valign="top" bgcolor="#AFAFE4" align="center" class="subtitle2">
                单
            </th>
            <th width="50%" bgcolor="#AFAFE4" align="center" class="subtitle2">
                双
            </th>
        </tr>
        <tr>
            <td valign="top" bgcolor="#FFF7F0" class="point" align="center">
                1、3、5、7、9、11、13、15、17
            </td>
            <td bgcolor="#FFF7F0" class="point" align="center">
                0、2、4、6、8、10、12、14、16、18
            </td>
        </tr>
    </table>
    </p>
    <p>
        开奖结果前三、中三或后三数字总和的为1、3、5、7、9、11、13、15、17、19、21、21、23、25、27时为“单”，若为0、2、4、6、8、10、12、14、16、18、20、22、24、26时为“双”，当投注和数单双与开奖结果的和数单双相符时，即为中奖。</br>
        ※举例：投注者购买"(后三)和数单"，当期开奖结果如为20290（百2+十9+个0=11为单），则视为中奖。</p>
    <p>
    <table width="100%">
        <tr>
            <th width="50%" valign="top" bgcolor="#AFAFE4" align="center" class="subtitle2">
                单
            </th>
            <th width="50%" bgcolor="#AFAFE4" align="center" class="subtitle2">
                双
            </th>
        </tr>
        <tr>
            <td valign="top" bgcolor="#FFF7F0" class="point" align="center">
                1、3、5、7、9、11、13、15、
                <br/>
                17、19、21、23、25、27
            </td>
            <td bgcolor="#FFF7F0" class="point" align="center">
                0、2、4、6、8、10、12、14、
                <br/>
                16、18、20、22、24、26
            </td>
        </tr>
    </table>
    </p>
    <p><strong>◎大小玩法说明</strong></br>
        开奖结果万位、千位、百位、十位或个位数字为5、6、7、8、9时为“大”，若为0、1、2、3、4时为“小”，当投注位数大小与开奖结果的位数大小相符时，即为中奖。</br>
        ※举例：投注者购买百位小，当期开奖结果如为20352（3为小），则视为中奖。</br>
        开奖结果万千位、万百位、万十位、万个位、千百位、千十位、千个位、百十位、十个位或百个位数字总和的尾数为5、6、7、8、9时为“大”，若为0、1、2、3、4时为“小”，当投注和数大小与开奖结果的和数大小相符时，即为中奖。
        ※举例：投注者购买和数百十位小，当期开奖结果如为20491（百4+十9=13，尾数3为小），则视为中奖。</p>
    <p>
    <table width="100%">
        <tr>
            <th width="50%" valign="top" bgcolor="#AFAFE4" align="center" class="subtitle2">
                大
            </th>
            <th width="50%" bgcolor="#AFAFE4" align="center" class="subtitle2">
                小
            </th>
        </tr>
        <tr>
            <td valign="top" bgcolor="#FFF7F0" class="point" align="center">
                5、6、7、8、9
            </td>
            <td bgcolor="#FFF7F0" class="point" align="center">
                0、1、2、3、4
            </td>
        </tr>
    </table>
    </p>
    <p>开奖结果前三、中三或后三数字总和的为14、15、16、17、18、19、20、21、22、23、24、25、26、27时为“大”，
        若为0、1、2、3、4、5、6、7、8、9、10、11、12、13时为“小”，当投注和数大小与开奖结果的和数大小相符时，即为中奖。</br>
        ※举例：投注者购买"(后三)和数大"，当期开奖结果如为20976（百9+十7+个6=22为大），则视为中奖。</p>
    <p>
    <table width="100%">
        <tr>
            <th width="50%" valign="top" bgcolor="#AFAFE4" align="center" class="subtitle2">
                大
            </th>
            <th width="50%" bgcolor="#AFAFE4" align="center" class="subtitle2">
                小
            </th>
        </tr>
        <tr>
            <td valign="top" bgcolor="#FFF7F0" class="point" align="center">
                14、15、16、17、18、19、20、21、
                <br/>
                22、23、24、25、26、27
            </td>
            <td bgcolor="#FFF7F0" class="point" align="center">
                0、1、2、3、4、5、6、
                <br/>
                7、8、9、10、11、12、13
            </td>
        </tr>
    </table>
    </p>
    <p>开奖结果所有号码总和的为23、24、25、26、27、28、29、30、31、32、33、34、35、36、37、38、39、40、41、42、43、44、45时为“大”，
        若为0、1、2、3、4、5、6、7、8、9、10、11、12、13、14、15、16、17、18、19、20、21、22时为“小”，当投注和数大小与开奖结果的和数大小相符时，即为中奖。</br>
        ※举例：投注者购买"总大"，当期开奖结果如为20976（万2+千0+百9+十7+个6=24为大），则视为中奖。</p>
    <p>
    <table width="100%">
        <tr>
            <th width="50%" valign="top" bgcolor="#AFAFE4" align="center" class="subtitle2">
                大
            </th>
            <th width="50%" bgcolor="#AFAFE4" align="center" class="subtitle2">
                小
            </th>
        </tr>
        <tr>
            <td valign="top" bgcolor="#FFF7F0" class="point" align="center">
                23、24、25、26、27、28、29、30、31、32、33、
                <br/>
                34、35、36、37、38、39、40、41、42、43、44、45
            </td>
            <td bgcolor="#FFF7F0" class="point" align="center">
                0、1、2、3、4、5、6、7、8、9、10、11、12、
                <br/>
                13、14、15、16、17、18、19、20、21、22
            </td>
        </tr>
    </table>
    </p>
    <p><strong>◎质合玩法说明</strong></br>
        开奖结果万位、千位、百位、十位或个位数字为1、2、3、5、7时为“质数”，若为0、4、6、8、9时为“合数”，当投注位数质合与开奖结果的位数质合相符时，即为中奖。</br>
        ※举例：投注者购买个位质，当期开奖结果如为20957（7为质），则视为中奖。</br>
        开奖结果万千位、万百位、万十位、万个位、千百位、千十位、千个位、百十位、十个位或百个位数字总和的尾数为1、2、3、5、7时为“质数”，若为0、4、6、8、9时为“合数”，当投注号码与开奖结果的质合相符时，即为中奖。
        ※举例：投注者购买百十位合，当期开奖结果如为20957（百9+十5=14，尾数4为合数），则视为中奖。</br>
        开奖结果前三、中三或后三数字总和的尾数为1、2、3、5、7时为“质数”，若为0、4、6、8、9时为“合数”，当投注号码与开奖结果的质合相符时，即为中奖。
        ※举例：投注者购买后三質，当期开奖结果如为20957（百9+十5+个7=21，尾数1为質数），则视为中奖。
    </p>
    <p>
    <table width="100%">
        <tr>
            <th width="50%" valign="top" bgcolor="#AFAFE4" align="center" class="subtitle2">
                质
            </th>
            <th width="50%" bgcolor="#AFAFE4" align="center" class="subtitle2">
                合
            </th>
        </tr>
        <tr>
            <td valign="top" bgcolor="#FFF7F0" class="point" align="center">
                1、 2、 3、 5、 7
            </td>
            <td bgcolor="#FFF7F0" class="point" align="center">
                0、 4、 6、 8、 9
            </td>
        </tr>
    </table>
    </p>
    <h5><strong>龙虎玩法</strong></h5>
    <p><strong>◎质合玩法说明</strong></br>
        龙虎游戏规则：龙虎是以开奖结果的五个数字作为基准，取任意位置（万、千、百、十、个）的数字进行组合大小比对的一种玩法；</br>
        当投注龙/虎时，开奖结果为和局，那么押注龙/虎视为不中奖，且计算有效金额退水；</br>
        当投注"和"时，开奖结果为龙/虎，投注“和”视为不中奖；</br>
        举例：开奖结果为：2,1,3,5,2 万为龙、千为龙虎时：结果 龙(2）大于虎（1），即为开龙；如万为龙，个为虎时，结果一样大，即为开和局！</br>
        说明：龙1 VS 虎2 即为万为龙，千为虎；龙2 VS 虎4 即为千为龙，十为虎；</br>
        注：总龙虎即龙1 VS 虎5</br>
    </p>
</div>
<div class="help_col">
    <h5>筹备中</h5>
</div>
<div class="help_col">
    <h5><strong>总则</strong></h5>
    <p>
        本站五分时时彩游戏每天进行288期，北京时间（GMT+8）每天00:00起每隔5分钟开奖一次。本公司五分时时彩具体游戏规则请参考彩种介绍。<br/>
        如果用户投注成功后，若因销售终端故障、通讯线路故障和投注站信用额度受限等原因造成当期无法开奖的，应退还购买者投注金额。
   </p>
</div>
