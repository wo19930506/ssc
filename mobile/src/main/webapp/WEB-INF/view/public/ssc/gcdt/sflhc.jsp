<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-gcdt-sflhc">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left gcfanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a href="javascript:void(0);" class="button button-link pull-right menubtn">
                菜单
            </a>
            <h1 class="title">10分六合彩</h1>
        </header>
        <c:import url="common/commonBet.jsp" />
        <div class="content cl-601">
            <div class="cl-600" id="ssc-parent-menu">
                <div class="cl-602">
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-tm">特码</a>
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-zm">正码</a>
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-ztm">正特码</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/sflhc/zm_1~6.html">正码1-6</a>
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-lm">连码</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/sflhc/bb.html">半波</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/sflhc/yx.html">一肖/尾</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/sflhc/tx.html">特肖</a>
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-hx">合肖</a>
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-lx">连肖</a>
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-wsl">尾数连</a>
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-qbz">全不中</a>
                </div>
            </div>
            <div class="cl-900" id="lastOpenInfo"></div>
            <div class="cl-901">
                <div class="cl-902">
                    <span class="left" data-number="" id="number">第<font>..数据读取中..</font>期</span>
                    <span class="right">距离下一期还有：<font id="leftTime">00:00:00</font></span>
                </div>
                <div class="cl-903" id="openHistoryList">
                </div>
            </div>
            <div id="sub-menu-list">
                <div class="cl-600 cl-610 hide" id="sub-menu-tm">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/tm_A.html" href="javascript:void(0)">特码A</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/tm_B.html" href="javascript:void(0)">特码B</a>
                    </div>
                </div>
                <div class="cl-600 cl-610 hide" id="sub-menu-zm">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/zm_A.html" href="javascript:void(0)">正码A</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/zm_B.html" href="javascript:void(0)">正码B</a>
                    </div>
                </div>
                <div class="cl-600 cl-610 hide" id="sub-menu-ztm">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/ztm_zyt.html" href="javascript:void(0)">正一特</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/ztm_zet.html" href="javascript:void(0)">正二特</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/ztm_zst.html" href="javascript:void(0)">正三特</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/ztm_zhengsite.html" href="javascript:void(0)">正四特</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/ztm_zwt.html" href="javascript:void(0)">正五特</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/ztm_zlt.html" href="javascript:void(0)">正六特</a>
                    </div>
                </div>
                <div class="cl-600 cl-610 hide" id="sub-menu-lm">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/lm_sqz.html" href="javascript:void(0)">三全中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/lm_szezze.html" href="javascript:void(0)">三中二之中二</a>
                        <%--<a data-url="<%=basePath%>ssc/gcdt/sflhc/lm_szezzs.html" href="javascript:void(0)">三中二之中三</a>--%>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/lm_eqz.html" href="javascript:void(0)">二全中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/lm_eztzzt.html" href="javascript:void(0)">二中特之中特</a>
                        <%--<a data-url="<%=basePath%>ssc/gcdt/sflhc/lm_eztzze.html" href="javascript:void(0)">二中特之中二</a>--%>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/lm_tc.html" href="javascript:void(0)">特串</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/lm_szy.html" href="javascript:void(0)">四中一</a>
                    </div>
                </div>
                <div class="cl-600 cl-610 hide" id="sub-menu-hx">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/hx_2x.html" href="javascript:void(0)">二肖</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/hx_3x.html" href="javascript:void(0)">三肖</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/hx_4x.html" href="javascript:void(0)">四肖</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/hx_5x.html" href="javascript:void(0)">五肖</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/hx_6x.html" href="javascript:void(0)">六肖</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/hx_7x.html" href="javascript:void(0)">七肖</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/hx_8x.html" href="javascript:void(0)">八肖</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/hx_9x.html" href="javascript:void(0)">九肖</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/hx_10x.html" href="javascript:void(0)">十肖</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/hx_11x.html" href="javascript:void(0)">十一肖</a>
                    </div>
                </div>
                <div class="cl-600 cl-610 hide" id="sub-menu-qbz">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/qbz_5bz.html" href="javascript:void(0)">五不中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/qbz_6bz.html" href="javascript:void(0)">六不中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/qbz_7bz.html" href="javascript:void(0)">七不中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/qbz_8bz.html" href="javascript:void(0)">八不中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/qbz_9bz.html" href="javascript:void(0)">九不中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/qbz_10bz.html" href="javascript:void(0)">十不中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/qbz_11bz.html" href="javascript:void(0)">十一不中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/qbz_12bz.html" href="javascript:void(0)">十二不中</a>
                    </div>
                </div>
                <div class="cl-600 cl-610 hide" id="sub-menu-lx">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/lx_2xlz.html" href="javascript:void(0)">二肖连中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/lx_3xlz.html" href="javascript:void(0)">三肖连中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/lx_4xlz.html" href="javascript:void(0)">四肖连中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/lx_5xlz.html" href="javascript:void(0)">五肖连中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/lx_2xlbz.html" href="javascript:void(0)">二肖连不中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/lx_3xlbz.html" href="javascript:void(0)">三肖连不中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/lx_4xlbz.html" href="javascript:void(0)">四肖连不中</a>
                    </div>
                </div>
                <div class="cl-600 cl-610 hide" id="sub-menu-wsl">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/wsl_2wlz.html" href="javascript:void(0)">二尾连中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/wsl_3wlz.html" href="javascript:void(0)">三尾连中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/wsl_4wlz.html" href="javascript:void(0)">四尾连中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/wsl_2wlbz.html" href="javascript:void(0)">二尾连不中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/wsl_3wlbz.html" href="javascript:void(0)">三尾连不中</a>
                        <a data-url="<%=basePath%>ssc/gcdt/sflhc/wsl_4wlbz.html" href="javascript:void(0)">四尾连不中</a>
                    </div>
                </div>
            </div>
            <div class="bg-white cl-951" id="betContainer">
            </div>
        </div>
    </div>
    <c:import url="../../common/leftSscPanel.jsp" />
    <c:import url="../../common/menuAlert.jsp">
        <c:param name="playGroupId" value="22"/>
    </c:import>
</div>
<c:import url="../../common/commonJs.jsp"/>
<script type="text/html" id="template_openNumber_item">
    <div class="cl-904">
        <div class="cl-981"><span class="number">第<font class="style_blue">{{number}}</font>期&nbsp;|&nbsp;</span></div>
        <div class="cl-982">
            <span class="openNumber">
                {{if openCodeArr != null}}
                    {{each openCodeArr as value index}}
                        <i class="bose-{{openCodeArr[index]}} lhc_ball">{{value}}</i>
                        {{if index == 5}}
                        <i class="cl-1210 lhc_ball">&nbsp;</i>
                        {{/if}}
                    {{/each}}
                {{else}}
                    开奖中
                {{/if}}
            </span>
        </div>
    </div>
</script>
<script type="text/html" id="template_lastOpenInfo">
    <span class="left cl-1200 cl-1203 lhc_1200_qi" id="lastNumber">第<span class="style_blue">{{number}}</span>期&nbsp;&nbsp;</span>
    <div class="left">
        <span class="cl-1201 cl-1203" id="numInfo">
            {{each openCodeArr as value index}}
                <i class="bose-{{openCodeArr[index]}} lhc_ball">{{value}}</i>
                {{if index == 5}}
                <i class="cl-1210 lhc_ball">&nbsp;</i>
                {{/if}}
                {{if index == 6}}
                <i class="cl-1211 lhc_ball" onclick="showLhcLastDataSx()">&nbsp;</i>
                {{/if}}
            {{/each}}
        </span>
        <span class="cl-1201 cl-1203" id="sxInfo" style="display:none;">
            {{each sxArr as value index}}
                <i class="bose-{{openCodeArr[index]}} lhc_ball">{{value}}</i>
                {{if index == 5}}
                <i class="cl-1210 lhc_ball">&nbsp;</i>
                {{/if}}
                {{if index == 6}}
                <i class="cl-1211 lhc_ball" onclick="showLhcLastDataNum()">&nbsp;</i>
                {{/if}}
            {{/each}}
        </span>
    </div>
</script>
<c:import url="../../common/bodyEnd.jsp"/>