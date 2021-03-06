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
<c:import url="../../../common/bodyStart.jsp"/>
<c:import url="../common/commonHead.jsp" />
<div class="page-group">
    <div class="page page-current" id="page-zst-jbzst">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <%--<a class="yxsm" href="<%=basePath%>ssc/kjjl/bqxq.html?playGroupId=1">--%>
            <%--游戏说明--%>
            <%--</a>--%>
            <a class="button button-link button-nav open-panel re_czqh" data-panel='#panel-left'>
                <font>彩种切换</font>
                <span class="icon icon-top-gcdt"></span>
            </a>
            <h1 class="title">安徽快3-走势图</h1>
        </header>
        <div class="content cl-601 zst-cl-10">
            <div class="cl-600" id="ssc-parent-menu">
                <div class="re-cl-602">
                    <a data-name="jb" href="javascript:void(0)" class="choose">基本走势</a>
                    <%--<a data-name="sm" href="javascript:void(0)" class="sm">双面走势</a>--%>
                    <span class="goucai"><a id="blink" href="<%=basePath%>ssc/gcdt/ahk3.html">立即购彩</a></span>
                    <span class="gengduo">更多期数</span>
                </div>
            </div>
            <div class="click-qishu-btns">
                <a href="javascript:void(0)" data-qishu="50">50期</a>
                <a href="javascript:void(0)" data-qishu="100">100期</a>
            </div>
            <div id="sub-menu-list">
                <div class="cl-600 cl-610 re-cl-610">
                    <div class="cl-602 index-btns">
                        <a href="javascript:void(0)" data-index="0" class="wanW active">百位</a>
                        <a href="javascript:void(0)" data-index="1">十位</a>
                        <a href="javascript:void(0)" data-index="2">个位</a>
                    </div>
                </div>
            <%--<div class="cl-600" id="ssc-parent-menu">--%>
                <%--<div class="cl-602 index-btns">--%>
                    <%--<a href="javascript:void(0)" class="active" data-index="0">百位</a>--%>
                    <%--<a href="javascript:void(0)" data-index="1">十位</a>--%>
                    <%--<a href="javascript:void(0)" data-index="2">个位</a>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div id="sub-menu-list">--%>
                <%--<div class="cl-600 cl-610">--%>
                    <%--<div class="cl-602 qishu-btns">--%>
                        <%--<a data-qishu="30" href="javascript:void(0)">30期</a>--%>
                        <%--<a data-qishu="50" href="javascript:void(0)">50期</a>--%>
                        <%--<a data-qishu="80" href="javascript:void(0)">80期</a>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <div class="zst-cl-1 zst_style rezst-cl-1">
                    <div class="item">
                        <span class="">期号</span>
                        <span>1</span>
                        <span>2</span>
                        <span>3</span>
                        <span>4</span>
                        <span>5</span>
                        <span>6</span>
                    </div>
                    <div class="zst-content zst_relative">
                        <%--<script>--%>
                        <%--for (var i = 0; i < 50; ++i) {--%>
                        <%--document.write('<div class="item">\--%>
                        <%--<span class="">20120230</span>\--%>
                        <%--<span><i class="cus-on-red">3</i></span>\--%>
                        <%--<span>1</span>\--%>
                        <%--<span>2</span>\--%>
                        <%--<span>3</span>\--%>
                        <%--<span>4</span>\--%>
                        <%--<span>5</span>\--%>
                        <%--<span>6</span>\--%>
                        <%--<span>7</span>\--%>
                        <%--<span>8</span>\--%>
                        <%--<span>9</span>\--%>
                        <%--</div>');--%>
                        <%--}--%>
                        <%--</script>--%>

                    </div>
                </div>
            </div>
            <%--<c:import url="../../../common/copyright.jsp"/>--%>
        </div>
    </div>
    <c:import url="../common/leftZstPanel.jsp"/>
    <c:import url="../../../common/rightPanel.jsp"/>
</div>
<c:import url="../../../common/commonJs.jsp"/>
<script type="text/html" id="template_item">
    <div class="item">
        <span>{{number}}</span>
        {{each numArr}}
        {{if $value.flag == true}}
        <span class="jbspan jbspan_relative"><i class="cus-on-red">{{$value.num}}{{#htmlCanvas}}</i></span>
        {{else}}
        <span class="common_span">{{$value.num}}</span>
        {{/if}}
        {{/each}}
    </div>
</script>
<script type="text/html" id="template_tongji">
    <div class="item">
        <span class="">出现总次数</span>
        {{each cxzcs}}
        <span>{{$value}}</span>
        {{/each}}
    </div>
    <div class="item">
        <span class="">平均遗漏值</span>
        {{each pjylz}}
        <span>{{$value}}</span>
        {{/each}}
    </div>
    <div class="item">
        <span class="">最大遗漏值</span>
        {{each zdylz}}
        <span>{{$value}}</span>
        {{/each}}
    </div>
    <div class="item">
        <span class="">最大连出值</span>
        {{each zdlcz}}
        <span>{{$value}}</span>
        {{/each}}
    </div>
</script>
<script>
    var playGroupId = 20;

    function renderData(data) {
        var left_w = 0; //球离左边的距离
        var spanW = 0, firstSpanW = 0;
        var spanH = 0;
        firstSpanW = $(".zst_style .item span").eq(0).width(); //宽度
        spanW = $(".zst_style .item span").eq(1).width();
        spanH = $(".zst_style .item span").eq(1).height() * 2;

        var cxzcs = []; // 出现总次数
        var zdylz = []; // 最大遗漏值
        var tmpZdylz = [];   // 临时计算最大遗漏值

        var pjylz = []; // 平均遗漏值
        var tmpPjylz = []; // 临时计算平均遗漏值

        var zdlcz = []; // 最大连出值
        var tmpZdlcz = [];  // 临时计算最大连出值

        for (var i = 0; i <= 5; ++i) {
            cxzcs[i] = 0;

            zdylz[i] = 0;
            tmpZdylz[i] = {
                total: 0,   // 当前数
                maxTotal: 0,    // 最大数
                count: 0    // 计算次数
            };

            pjylz[i] = 0;
            tmpPjylz[i] = {
                totalYl: 0, // 遗漏总计
                count: 0    // 遗漏次数
            };

            zdlcz[i] = 0;
            tmpZdlcz[i] = {
                max: 0, // 连出最大
                count: 0    // 连出计数
            };
        }



        var dataIndex = parseInt($(".index-btns .active").attr("data-index"));
        var result = [];
        var bc1 = 0;

        for (var ii = 0; ii < data.length; ii++) {
            var num = parseInt(data[ii].openCode.split(",")[dataIndex]);
            var htmlCanvas ="";
            if( ii < data.length - 1){
                bc1 = Tools.parseInt(data[ii].openCode.split(',')[dataIndex]) - Tools.parseInt(data[ii + 1].openCode.split(',')[dataIndex]);
            }

            if(bc1 > 0) {
                bc1 = (bc1 + 1) * spanW; //获取两个球之间的宽度
                left_w = (Tools.parseInt(data[ii].openCode.split(',')[dataIndex]) +  1) * spanW - spanW + firstSpanW - bc1; //获取画板距左边的位置
            } else if(bc1 < 0) {
                bc1 = (-bc1 + 1) * spanW;
                left_w = Tools.parseInt(data[ii].openCode.split(',')[dataIndex]) * spanW - spanW + firstSpanW;
            }else if(bc1 == 0) {
                bc1 = spanW;
                left_w = Tools.parseInt(data[ii].openCode.split(',')[dataIndex]) * spanW - spanW + firstSpanW;
            }

            htmlCanvas = '<canvas class="mobile_zx" id="canvas'+ ii +''+ dataIndex +'" width="'+ bc1 +'px" height="'+ spanH +'px" style="z-index: 10; left:'+ left_w +'px; display: inline;"></canvas>';


            var tmpArr = [];
            for (var i = 0; i < 6; ++i) {
                tmpArr.push({     //push() 向数组的末尾添加一个或多个元素，并返回新的长度
                    num: i + 1,
                    flag: num == i + 1 ? true : false
                });

                // 出现总次数
                if ((num - 1) == i) {
                    cxzcs[i]++;
                }

                // 遗漏值
                if ((num - 1) == i) { // 出现
                    tmpZdylz[i].maxTotal = tmpZdylz[i].total > tmpZdylz[i].maxTotal ? tmpZdylz[i].total : tmpZdylz[i].maxTotal;
                    tmpZdylz[i].total = 0;
                    tmpZdylz[i].count++;

                    tmpZdlcz[i].count++;
                    tmpZdlcz[i].max = tmpZdlcz[i].count > tmpZdlcz[i].max ? tmpZdlcz[i].count : tmpZdlcz[i].max;
                } else {   // 遗漏
                    tmpPjylz[i].totalYl++;
                    if( tmpZdylz[i].total < 1){
                        tmpPjylz[i].count++; //遗漏次数
                    }

                    tmpZdylz[i].total++;
                    tmpZdlcz[i].count = 0;
                }
            }

            result.push({
                htmlCanvas: htmlCanvas,//画板标签
                number: data[ii].number.substr(2),
                numArr: tmpArr
            });

        }

        $.each(tmpZdylz, function (index, value) {
            if (cxzcs[index] > 0) {
                zdylz[index] = value.maxTotal;
            }
        });

        $.each(tmpPjylz, function (index, value) {
            if (cxzcs[index] > 0) {
                pjylz[index] = parseInt(value.totalYl / value.count);
            }
        });

        $.each(tmpZdlcz, function (index, value) {
            if (cxzcs[index] > 0) {
                zdlcz[index] = value.max;
            }
        });

        var str = '';
        $.each(result, function(index, value) {
            var html = template("template_item", value);
            str += html;
        });

        var tongjiData = {
            cxzcs: cxzcs,
            zdylz: zdylz,
            pjylz: pjylz,
            zdlcz: zdlcz
        };
        str += template("template_tongji", tongjiData);


        $(".zst-content").html(str);

        //画出相对应的折线
        for (var m = 0; m < data.length - 1; m++) {
            //设置canvas定位
            var canvas = document.getElementById("canvas" + m + "" + dataIndex + "");
            var context = canvas.getContext("2d");
            var bc1 = (data[m].openCode.split(',')[dataIndex]) - data[m + 1].openCode.split(',')[dataIndex];
            if (bc1 < 0) {
                context.moveTo(18, 15);
                context.lineTo(canvas.width - 28, canvas.height - 15);
            } else if (bc1 > 0) {
                context.moveTo(canvas.width - 25, 15);
                context.lineTo(30, canvas.height - 15);
            } else {
                context.moveTo(canvas.width / 2, canvas.height / 3);
                context.lineTo(canvas.width / 2, canvas.height / 2);
            }
            context.strokeStyle = "#F63F3F";
            context.lineWidth = 2;
            context.stroke();
        }
    }
</script>
//实现文字的闪烁
<script language="javascript">
    function changeColor() {
        var color = "blue|red";
        color = color.split("|");
        document.getElementById("blink").style.color = color[parseInt(Math.random() * color.length)];
    }
    setInterval("changeColor()", 230);
</script>
<c:import url="../../../common/bodyEnd.jsp"/>