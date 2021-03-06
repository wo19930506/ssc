<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="group">
    <ul>
        <li>
            <b>前三直选</b>
            <p class="btn_h3_zx">
                <span class="playPlIdBtn acti" data-play_id="711" data-play_pl_id="14516" data-name="q3zxfs" data-fun_zhushu="zhushu_q3zxfs" data-fun_content="content_q3zxfs" data-fun_suiji="suiji_q3zxfs"><a href="javascript:void(0)">直选复式</a></span>
                <span class="playPlIdBtn" data-play_id="709" data-play_pl_id="14514" data-name="q3zxds" data-fun_zhushu="zhushu_q3zxds" data-fun_content="content_q3zxds" data-fun_suiji="suiji_q3zxds"><a href="javascript:void(0)">直选单式</a></span>
                <span class="playPlIdBtn" data-play_id="712" data-play_pl_id="14517|14518|14519" data-name="q3zh" data-fun_zhushu="zhushu_q3zh" data-fun_content="content_q3zh" data-fun_suiji="suiji_q3zh"><a href="javascript:void(0)">前三组合</a></span>
                <span class="playPlIdBtn" data-play_id="710" data-play_pl_id="14515" data-name="q3zxhz" data-fun_zhushu="zhushu_q3zxhz" data-fun_content="content_q3zxhz" data-fun_suiji="suiji_q3zxhz"><a href="javascript:void(0)">直选和值</a></span>
                <span class="playPlIdBtn" data-play_id="713" data-play_pl_id="14520" data-name="q3zxkd" data-fun_zhushu="zhushu_q3zxkd" data-fun_content="content_q3zxkd" data-fun_suiji="suiji_q3zxkd"><a href="javascript:void(0)">直选跨度</a></span>
            </p>
        </li>
        <li>
            <b>前三组选</b>
            <p class="btn_h3_zux">
                <span class="playPlIdBtn" data-play_id="716" data-play_pl_id="14524" data-name="q3z3fs" data-fun_zhushu="zhushu_q3z3fs" data-fun_content="content_q3z3fs" data-fun_suiji="suiji_q3z3fs"><a href="javascript:void(0)">组三复式</a></span>
                <span class="playPlIdBtn" data-play_id="715" data-play_pl_id="14523" data-name="q3z3ds" data-fun_zhushu="zhushu_q3z3ds" data-fun_content="content_q3z3ds" data-fun_suiji="suiji_q3z3ds"><a href="javascript:void(0)">组三单式</a></span>
                <span class="playPlIdBtn" data-play_id="718" data-play_pl_id="14526" data-name="q3z6fs" data-fun_zhushu="zhushu_q3z6fs" data-fun_content="content_q3z6fs" data-fun_suiji="suiji_q3z6fs"><a href="javascript:void(0)">组六复式</a></span>
                <span class="playPlIdBtn" data-play_id="717" data-play_pl_id="14525" data-name="q3z6ds" data-fun_zhushu="zhushu_q3z6ds" data-fun_content="content_q3z6ds" data-fun_suiji="suiji_q3z6ds"><a href="javascript:void(0)">组六单式</a></span>
                <span class="playPlIdBtn" data-play_id="714" data-play_pl_id="14521|14522" data-name="q3hhzx"
                      data-fun_zhushu="zhushu_q3hhzx" data-fun_content="content_q3hhzx" data-fun_suiji="suiji_q3hhzx"><a href="javascript:void(0)">混合组选</a></span>
                <span class="playPlIdBtn" data-play_id="720" data-play_pl_id="14529|14530" data-name="q3zuxhz"
                      data-fun_zhushu="zhushu_q3zuxhz" data-fun_content="content_q3zuxhz" data-fun_suiji="suiji_q3zuxhz"><a href="javascript:void(0)">组选和值</a></span>
                <span class="playPlIdBtn" data-play_id="719" data-play_pl_id="14527|14528" data-name="q3zxbd"
                      data-fun_zhushu="zhushu_q3zxbd" data-fun_content="content_q3zxbd" data-fun_suiji="suiji_q3zxbd"><a href="javascript:void(0)">组选包胆</a></span>
            </p>
        </li>
        <li>
            <b>前三其它</b>
            <p class="btn_h3_qt">
                <span class="playPlIdBtn" data-play_id="707" data-play_pl_id="14510" data-name="q3hzws" data-fun_zhushu="zhushu_q3hzws" data-fun_content="content_q3hzws" data-fun_suiji="suiji_q3hzws"><a href="javascript:void(0)">和值尾数</a></span>
                <span class="playPlIdBtn" data-play_id="708" data-play_pl_id="14511|14512|14513" data-name="q3tsh"
                      data-fun_zhushu="zhushu_q3tsh" data-fun_content="content_q3tsh" data-fun_suiji="suiji_q3tsh"><a href="javascript:void(0)">特殊号</a></span>
            </p>
        </li>
    </ul>
</div>

<c:import url="../common/commonMiddle.jsp" />
<c:import url="../common/subCommonJs.jsp" />

<script type="text/html" id="template_q3zxfs">
<div class="Pick cl-1002 recl-1002" data-flag="zxfs_zx">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位各选一个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：345 开奖号码前三位：345，即中前三位直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百位中至少各选择1个号码组成一注，所选号码与开奖号码全部相同，且顺序一致，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="万">
            <b><i>万位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="千">
            <b><i>千位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="百">
            <b><i>百位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
</script>

<script type="text/html" id="template_q3zxds">
<div class="Pick cl-1003 recl-1003">
    <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个3位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：345开奖号码：345，即中前三直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百位中至少各选择1个号码组成一注，所选号码与开奖号码全部相同，且顺序一致，即为中奖。</var>
            </a>
        </span>
    </p>
    <div class="content_jiang">
        <textarea  id="textarea1" class="content_tex" autofocus></textarea>
        <div class="right con_j_end">
            <ul>
                <li onclick="delRrepet(this)"><a href="javascript:void(0)">删除重复号</a></li>
                <li onclick="daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                <li onclick="clearTextarea()"><a href="javascript:void(0)">清空</a></li>
            </ul>
        </div>
    </div>

    <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
</div>
</script>

<%--前三组合--%>
<script type="text/html" id="template_q3zh">
<div class="Pick cl-1002 cl-1004-hszh">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位各选一个号码组成三注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：购买：6+7+8，该票共6元，由以下三注：678(三星)、78(二星)、8(一星)构成 开奖号码：678，即可中奖 一星、二星、三星各一注。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百位中至少各选择1个号码组成1-3星的组合共三注，当百位数以开奖号码相同，则中一个3等奖；如果百位和千位号码和开奖号码相同，则中一个3等奖以及一个2等奖，以次类推，最高可中3个奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="万">
            <b><i>万位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="千">
            <b><i>千位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="百">
            <b><i>百位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
</script>

<%--直选和值--%>
<script type="text/html" id="template_q3zxhz">
<div class="Pick cl-1005-zxhz">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-27中任意选择1个或1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：和值：1，开奖号码：前三位001、010、100，即中前三值选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>所选号码数值等于开奖号码的万、千、百三个数值相加之和，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="li1005_hezhi" data-name="和值">
            <b><i>和值</i></b>
            <var class="numLine renumHeigth">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
                <span><i>10</i></span>
                <span><i>11</i></span>
                <span><i>12</i></span>
                <span><i>13</i></span>
            </var>
            <var class="numLine renumHeigth">
                <span><i>14</i></span>
                <span><i>15</i></span>
                <span><i>16</i></span>
                <span><i>17</i></span>
                <span><i>18</i></span>
                <span><i>19</i></span>
                <span><i>20</i></span>
                <span><i>21</i></span>
                <span><i>22</i></span>
                <span><i>23</i></span>
                <span><i>24</i></span>
                <span><i>25</i></span>
                <span><i>26</i></span>
                <span><i>27</i></span>
            </var>
        </li>
    </ul>
</div>
</script>

<%--直选跨度--%>
<script type="text/html" id="template_q3zxkd">
<div class="Pick cl-1002 cl-1006-zxkd">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中选择1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：跨度：8，开奖号码：**129，最大号码9与最小号码1相减值等于8，所选号与跨度号码相同即中奖。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>所选数值与开奖号码前三位最大和最小数字相减之差，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="跨度">
            <b><i>跨度</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
</script>

<%--组三复式--%>
<script type="text/html" id="template_q3z3fs">
<div class="Pick cl-1002 cl-1007-zsfs">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择2个或2个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：588开奖号码：前三位588(顺序不限)，即可中前三组选三。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9号码中至少选择2个号码组成两注，所选号码与开奖号码的万、千、百位相同，且顺序不限，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="组三">
            <b><i>组三</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
</script>

<%--组三单式--%>
<script type="text/html" id="template_q3z3ds">
<div class="Pick cl-1008-zsds">
    <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个三位数号码（三个数字中必须有二个数字相同）。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：001 开奖号码：前三位010(顺序不限)，即中前三组选三。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入一个3位数号码组成一注，三个数字中必须有两个数字相同，输入的数字与开奖的万、千、百位相同，顺序不限，即为中奖。</var>
            </a>

        </span>
    </p>
    <div class="content_jiang">
        <textarea  name="textarea1" class="content_tex" autofocus></textarea>
        <div class="right con_j_end">
            <ul>
                <li onclick="delRrepet(this)"><a href="javascript:void(0)">删除重复号</a></li>
                <li onclick="daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                <li onclick="clearTextarea()"><a href="javascript:void(0)">清空</a></li>
            </ul>
        </div>
    </div>

    <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
</div>
</script>

<%--组六复式--%>
<script type="text/html" id="template_q3z6fs">
<div class="Pick cl-1002 cl-1009-zlfs">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择3个或3个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：258开奖号码：前三位852(顺序不限)，即可中前三组选六。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9号码中至少选择3个号码组成一注，所选号码与开奖号码的万、千、百位相同，且顺序不限，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="组六">
            <b><i>组六</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
</script>

<%--组六单式--%>
<script type="text/html" id="template_q3z6ds">
<div class="Pick cl-1010-zlds">
    <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个三位数号码（三个数字完全不相同）。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：123 开奖号码：前三位321(顺序不限)，即中前三组选六。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入一个3位数号码组成一注，所选的号码与开奖的号码的万、千、百位相同，顺序不限，即为中奖。</var>
            </a>

        </span>
    </p>
    <div class="content_jiang">
        <textarea class="content_tex" autofocus></textarea>
        <div class="right con_j_end">
            <ul>
                <li onclick="delRrepet(this)"><a href="javascript:void(0)">删除重复号</a></li>
                <li onclick="daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                <li onclick="clearTextarea()"><a href="javascript:void(0)">清空</a></li>
            </ul>
        </div>
    </div>

    <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
</div>
</script>

<%--混合组选--%>
<script type="text/html" id="template_q3hhzx">
<div class="Pick cl-1011-hhzx">
    <p class="p1">
        <span class="fr fl cl-1001">
            手动至少输入三个号码构成一注(不包含豹子号)。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：001和123 开奖号码：前三位010(顺序不限)，即中前三组选三，或前三位312(顺序不限)，即中前三组选六。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入一个3位数号码组成一注(不包含豹子号)，开奖号码前3位为组选三或组选六形态，投注号码以开奖号码前三位相同，顺序不限，即为中奖。</var>
            </a>

        </span>
    </p>
    <div class="content_jiang">
        <textarea class="content_tex" autofocus></textarea>
        <div class="right con_j_end">
            <ul>
                <li onclick="delRrepet(this)"><a href="javascript:void(0)">删除重复号</a></li>
                <li onclick="daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                <li onclick="clearTextarea()"><a href="javascript:void(0)">清空</a></li>
            </ul>
        </div>
    </div>

    <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
</div>
</script>

<%--组选和值--%>
<script type="text/html" id="template_q3zuxhz">
<div class="Pick cl-1012-zxhz">
    <p class="p1">
        <span class="fr fl cl-1001">
            从1-26中选择1个号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：和值：3，开奖号码：前三位003(顺序不限)，即中前三组选三，或者前三位012(顺序不限)即中前三组选六。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>开奖号码前3位数号码组成一注(不包含豹子号)，开奖号码前3位为组选三或组选六形态，所选数值等于开奖号码的万、千、百位三个数字相加之和，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="li1012_hezhi" data-name="和值">
            <b><i>和值</i></b>
            <var class="numLine renumHeigth">
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
                <span><i>10</i></span>
                <span><i>11</i></span>
                <span><i>12</i></span>
                <span><i>13</i></span>
            </var>
            <var class="numLine renumHeigth">
                <span><i>14</i></span>
                <span><i>15</i></span>
                <span><i>16</i></span>
                <span><i>17</i></span>
                <span><i>18</i></span>
                <span><i>19</i></span>
                <span><i>20</i></span>
                <span><i>21</i></span>
                <span><i>22</i></span>
                <span><i>23</i></span>
                <span><i>24</i></span>
                <span><i>25</i></span>
                <span><i>26</i></span>
            </var>
        </li>
    </ul>
</div>
</script>


<%--组选包胆--%>
<script type="text/html" id="template_q3zxbd">
<div class="Pick cl-1002 cl-1013-zxbd">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中选择1个号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：包胆3：开奖号码：前三位3XX或者33X，即中前三组选三，前三位3XY，即中前三组选六</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9号码中任意选择一个胆码，开奖号码前三位为组选三或组选六形态(不含豹子号，投注号码与开奖前三位中任意一位相同，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="包胆">
            <b><i>包胆</i></b>
            <var class="numLine" data-flag="bdDanXuan">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
        </li>
    </ul>
</div>
</script>

<%--和值尾数--%>
<script type="text/html" id="template_q3hzws">
<div class="Pick cl-1002 cl-1014-hzws">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中选择1个号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：和值尾数8 开奖号码：前三位936，和值尾数为8，即中和值尾数。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>所选号码等于开奖号码的万、千、百位数字相加之和的尾数，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="hzws_li" data-name="和值尾数">
            <b><i>和值尾数</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
        </li>
    </ul>
</div>
</script>

<%--特殊号--%>
<script type="text/html" id="template_q3tsh">
<div class="Pick cl-1002 cl-1015-tsh">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中选择1个号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：豹子顺子对子 开奖号码：前三位888，即中豹子；前三位678，即中顺子；前三位558，即中对子。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>所选号码特殊属性与开奖号码前三位号码属性一致，即为中奖。其中：1.顺子号的万、千、百位不分顺序(特别号码：019、089也是顺子号)；2.对子号指的是开奖号码的前三位当中，任意两位数字相同的三位数号码</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="hzws_li tsh_li" data-name="特殊号">
            <b class="tsh-b"><i>特殊号</i></b>
            <span>豹子</span>
            <span>顺子</span>
            <span>对子</span>
        </li>
    </ul>
</div>
</script>
