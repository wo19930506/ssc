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
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn acti spans" data-play_id="502" data-play_pl_id="14221" data-name="gd11x5_rxyzyds" data-fun_zhushu="gd11x5_zhushu_rxyzy" data-fun_content="content_gd11x5_rxyzyds" data-fun_suiji="suiji_gd11x5_rxyzydsds"><a href="javascript:void(0)">任选一中一</a></span>
                <span class="playPlIdBtn spans" data-play_id="503" data-play_pl_id="14220" data-name="gd11x5_rxezeds" data-fun_zhushu="zhushu_gd11x5_rxezeds" data-fun_content="content_gd11x5_rxezeds" data-fun_suiji="suiji_gd11x5_rxezeds"><a href="javascript:void(0)">任选二中二</a></span>
                <span class="playPlIdBtn spans" data-play_id="504" data-play_pl_id="14219|14218|14217" data-name="gd11x5_rxszsds" data-fun_zhushu="zhushu_gd11x5_rxszsds" data-fun_content="content_suiji_gd11x5_rxszsds" data-fun_suiji="suiji_gd11x5_rxszsds"><a href="javascript:void(0)">任选三中三</a></span>
                <span class="playPlIdBtn spans" data-play_id="505" data-play_pl_id="14216"  data-name="gd11x5_rxsizsds" data-fun_zhushu="zhushu_gd11x5_rxsizsds" data-fun_content="content_gd11x5_rxsizsds" data-fun_suiji="suiji_gd11x5_rxsizsds"><a href="javascript:void(0)">任选四中四</a></span>
                <span class="playPlIdBtn spans" data-play_id="506" data-play_pl_id="14215"  data-name="gd11x5_rxwzwds" data-fun_zhushu="zhushu_gd11x5_rxwzwds" data-fun_content="content_gd11x5_rxwzwds" data-fun_suiji="suiji_gd11x5_rxwzwds"><a href="javascript:void(0)">任选五中五</a></span>
                <span class="playPlIdBtn spans" data-play_id="507" data-play_pl_id="14214" data-name="gd11x5_rxlzwds" data-fun_zhushu="zhushu_gd11x5_rxlzwds" data-fun_content="content_gd11x5_rxlzwds" data-fun_suiji="suiji_gd11x5_rxlzwds"><a href="javascript:void(0)">任选六中五</a></span>
                <span class="playPlIdBtn spans" data-play_id="508" data-play_pl_id="14213" data-name="gd11x5_rxqzwds" data-fun_zhushu="zhushu_gd11x5_rxqzwds" data-fun_content="content_gd11x5_rxqzwds" data-fun_suiji="suiji_gd11x5_rxqzwds"><a href="javascript:void(0)">任选七中五</a></span>
                <span class="playPlIdBtn spans" data-play_id="508" data-play_pl_id="14213" data-name="gd11x5_rxbzwds" data-fun_zhushu="zhushu_gd11x5_rxbzwds" data-fun_content="content_gd11x5_rxbzwds" data-fun_suiji="suiji_gd11x5_rxbzwds"><a href="javascript:void(0)">任选八中五</a></span>
            </p>
        </li>
    </ul>
</div>
<c:import url="../common/commonMiddle.jsp" />
<c:import url="../common/subCommonJs.jsp" />
<%--任选一中一--%>
<script type="text/html" id="template_gd11x5_rxyzyds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
           手动输入号码，从01-11中任意输入1个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：05开奖号码：08，04，11，05即中任一选一。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入1个号码组成一注，只要当期开奖号码包含所输入号码，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="content_jiang">
            <textarea   class="content_tex" autofocus></textarea>
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

<%--任选二中二--%>
<script type="text/html" id="template_gd11x5_rxezeds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
           手动输入号码，从01-11中任意输入2个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：05 04开奖号码：08，04，11，05即中任二中二。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入2个号码组成一注，只要当期开奖号码包含所输入号码，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="content_jiang">
            <textarea   class="content_tex" autofocus></textarea>
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


<%--任选三中三--%>
<script type="text/html" id="template_gd11x5_rxszsds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
           手动输入号码，从01-11中任意输入3个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：05 04 11开奖号码：08，04，11，05即中任选三中三。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入3个号码组成一注，只要当期开奖号码包含所输入号码，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="content_jiang">
            <textarea   class="content_tex" autofocus></textarea>
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

<%--任选四中四--%>
<script type="text/html" id="template_gd11x5_rxsizsds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
           手动输入号码，从01-11中任意输入4个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：05 04 08 03开奖号码：08，04，11，05，03即中任选四中四。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入4个号码组成一注，只要当期开奖号码包含所输入号码，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="content_jiang">
            <textarea   class="content_tex" autofocus></textarea>
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

<%--任选五中五--%>
<script type="text/html" id="template_gd11x5_rxwzwds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
           手动输入号码，从01-11中任意输入5个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：05 04 11 08 03开奖号码：08，04，11，05，03即中任五中五。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入4个号码组成一注，只要当期开奖号码包含所输入号码，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="content_jiang">
            <textarea   class="content_tex" autofocus></textarea>
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

<%--任选六中五--%>
<script type="text/html" id="template_gd11x5_rxlzwds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
           手动输入号码，从01-11中任意输入6个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：05 10 04 11 08 03开奖号码：08，04，11，05，03即中任六中五。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入6个号码组成一注，只要当期开奖号码包含所输入号码，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="content_jiang">
            <textarea   class="content_tex" autofocus></textarea>
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


<%--任选七中五--%>
<script type="text/html" id="template_gd11x5_rxqzwds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
           手动输入号码，从01-11中任意输入7个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：05 10 04 11 08 03 09开奖号码：08，04，11，05，03即中任七中五。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入7个号码组成一注，只要当期开奖号码包含所输入号码，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="content_jiang">
            <textarea   class="content_tex" autofocus></textarea>
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


<%--任选八中五--%>
<script type="text/html" id="template_gd11x5_rxbzwds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
           手动输入号码，从01-11中任意输入8个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：05 10 04 11 08 03 09 01开奖号码：08，04，11，05，03即中任八中五。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入8个号码组成一注，只要当期开奖号码包含所输入号码，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="content_jiang">
            <textarea   class="content_tex" autofocus></textarea>
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


<script>
    function daoRu(){
        showloadTxtTemplate1();
    }
</script>