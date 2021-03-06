<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-kjjl-all">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">开奖结果</h1>
        </header>
        <div class="content pull-to-refresh-content">
            <!-- 默认的下拉刷新层 -->
            <div class="pull-to-refresh-layer">
                <div class="preloader"></div>
                <div class="pull-to-refresh-arrow"></div>
            </div>
            <div class="buttons-tab" id="buttonsTabList">
                <a href="#" class="tab-link button" data-id="btn-all"><span>全部彩种</span></a>
                <a href="#" class="tab-link button" data-id="btn-gpc"><span>高频彩</span></a>
                <a href="#" class="tab-link button" data-id="btn-dpc"><span>低频彩</span></a>
            </div>
            <div class="content-block cl-8 cl-990">
                <div class="no-right-record hide"></div>
                <div class="list-block media-list" id="dataList">
                    <ul class="list-container">
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<script type="text/html" id="template_1">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=1">
            <div class="item-media"><img src="${resPath}img/hico6.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">重庆时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_2">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=2">
            <div class="item-media"><img src="${resPath}img/hico3.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">天津时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_3">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=3">
            <div class="item-media"><img src="${resPath}img/hico18.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">新疆时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle lhc_item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_4">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=4">
            <div class="item-media"><img src="${resPath}img/hico13.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">体彩排列3</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text item-text_res"></div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_5">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=5">
            <div class="item-media"><img src="${resPath}img/hico10.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">福彩3D</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_6">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=6">
            <div class="item-media"><img src="${resPath}img/hico7.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">六合彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle lhc_item-subtitle">
                    <span class="ball {{if bose1 == 1}}col0{{else if bose1 == 2}}col1{{/if}}">{{num1}}</span>
                    <span class="ball {{if bose2 == 1}}col0{{else if bose2 == 2}}col1{{/if}}">{{num2}}</span>
                    <span class="ball {{if bose3 == 1}}col0{{else if bose3 == 2}}col1{{/if}}">{{num3}}</span>
                    <span class="ball {{if bose4 == 1}}col0{{else if bose4 == 2}}col1{{/if}}">{{num4}}</span>
                    <span class="ball {{if bose5 == 1}}col0{{else if bose5 == 2}}col1{{/if}}">{{num5}}</span>
                    <span class="ball {{if bose6 == 1}}col0{{else if bose6 == 2}}col1{{/if}}">{{num6}}</span>
                    <span class="symbol">+</span>
                    <span class="ball {{if bose7 == 1}}col0{{else if bose7 == 2}}col1{{/if}}">{{num7}}</span>
                </div>
                <div class="item-text">
                    <span>{{sx1}}</span>
                    <span>{{sx2}}</span>
                    <span>{{sx3}}</span>
                    <span>{{sx4}}</span>
                    <span>{{sx5}}</span>
                    <span>{{sx6}}</span>
                    <i>&nbsp;&nbsp;&nbsp;</i>
                    <span>{{sx7}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_7">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=8">
            <div class="item-media"><img src="${resPath}img/hico20.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">北京28</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_8">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=8">
            <div class="item-media"><img src="${resPath}img/hico11.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">快乐8</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle item-subtitle_res">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                    <span class="ball">{{num6}}</span>
                    <span class="ball">{{num7}}</span>
                    <span class="ball">{{num8}}</span>
                    <span class="ball">{{num9}}</span>
                    <span class="ball">{{num10}}</span>
                    <span class="ball">{{num11}}</span>
                    <span class="ball">{{num12}}</span>
                    <span class="ball">{{num13}}</span>
                    <span class="ball">{{num14}}</span>
                    <span class="ball">{{num15}}</span>
                    <span class="ball">{{num16}}</span>
                    <span class="ball">{{num17}}</span>
                    <span class="ball">{{num18}}</span>
                    <span class="ball">{{num19}}</span>
                    <span class="ball">{{num20}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_9">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=9">
            <div class="item-media"><img src="${resPath}img/hico8.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">北京PK10</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ballpk bg-{{num1}}">{{num1}}</span>
                    <span class="ballpk bg-{{num2}}">{{num2}}</span>
                    <span class="ballpk bg-{{num3}}">{{num3}}</span>
                    <span class="ballpk bg-{{num4}}">{{num4}}</span>
                    <span class="ballpk bg-{{num5}}">{{num5}}</span>
                    <span class="ballpk bg-{{num6}}">{{num6}}</span>
                    <span class="ballpk bg-{{num7}}">{{num7}}</span>
                    <span class="ballpk bg-{{num8}}">{{num8}}</span>
                    <span class="ballpk bg-{{num9}}">{{num9}}</span>
                    <span class="ballpk bg-{{num10}}">{{num10}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_10">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=10">
            <div class="item-media"><img src="${resPath}img/hico19.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">幸运农场</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                    <span class="ball">{{num6}}</span>
                    <span class="ball">{{num7}}</span>
                    <span class="ball">{{num8}}</span>
                </div>
                <div class="item-text">
                    <span>{{str1}}</span>
                    <span>{{str2}}</span>
                    <span>{{str3}}</span>
                    <span>{{str4}}</span>
                    <span>{{str5}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_11">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=11">
            <div class="item-media"><img src="${resPath}img/hico12.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">广东快乐十分</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                    <span class="ball">{{num6}}</span>
                    <span class="ball">{{num7}}</span>
                    <span class="ball">{{num8}}</span>
                </div>
                <div class="item-text">
                    <span>{{str1}}</span>
                    <span>{{str2}}</span>
                    <span>{{str3}}</span>
                    <span>{{str4}}</span>
                    <span>{{str5}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_13">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=13">
            <div class="item-media"><img src="${resPath}img/sfssc.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">三分时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_14">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=14">
            <div class="item-media"><img src="${resPath}img/hico106.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">幸运飞艇</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ballpk bg-{{num1}}">{{num1}}</span>
                    <span class="ballpk bg-{{num2}}">{{num2}}</span>
                    <span class="ballpk bg-{{num3}}">{{num3}}</span>
                    <span class="ballpk bg-{{num4}}">{{num4}}</span>
                    <span class="ballpk bg-{{num5}}">{{num5}}</span>
                    <span class="ballpk bg-{{num6}}">{{num6}}</span>
                    <span class="ballpk bg-{{num7}}">{{num7}}</span>
                    <span class="ballpk bg-{{num8}}">{{num8}}</span>
                    <span class="ballpk bg-{{num9}}">{{num9}}</span>
                    <span class="ballpk bg-{{num10}}">{{num10}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_15">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=15">
            <div class="item-media"><img src="${resPath}img/ffssc.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">分分时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_16">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=16">
            <div class="item-media"><img src="${resPath}img/efssc.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">两分时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_17">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=17">
            <div class="item-media"><img src="${resPath}img/wfssc.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">五分时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_18">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=18">
            <div class="item-media"><img src="${resPath}img/jsk3.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">江苏快3</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_19">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=19">
            <div class="item-media"><img src="${resPath}img/hbk3.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">湖北快3</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_20">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=20">
            <div class="item-media"><img src="${resPath}img/ahk3.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">安徽快3</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_21">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=21">
            <div class="item-media"><img src="${resPath}img/jlk3.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">吉林快3</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<c:import url="../../common/bodyEnd.jsp"/>