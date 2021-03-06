<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="common/bodyStart.jsp" />

<div id="box" class="qc">
    <div class="qc" id="Right">
        <div class="main">
            <div class="main-box" style="width:1081px;">
                <div class="main-nav">
                    <div class="cplogo"><img src="${resPath}zst/img/gdklsf.png" alt="快乐十分" /><span>快乐十分</span></div>
                    <c:import url="common/nav.jsp" />
                    <ul class="btn-navs">
                        <li class="fff" data-contentid="zhexianData" data-id="shuju1">基本走势</li>
                        <li data-contentid="shuju2" data-id="shuju2">K线图</li>
                        <li data-contentid="shuju3" data-id="shuju3">直方图</li>
                        <%--<li data-id="shuju4">遗漏统计</li>--%>
                        <li data-id="shuju5">历史开奖数据</li>
                        <li>
                            <a href="javascript:void(0)" onclick="getSscPage('gcdt/klsf')">立即投注</a>
                        </li>
                    </ul>
                </div>
                <div class="qhbox">
                    <div class="main-li" style="display: none">
                        <div class="main-ul-box1">
                            <ul class="main-ul-box">
                                <li>
                                    <p>二星:</p>
                                    <ul class="main-ul-1">
                                        <li>
                                            <a href="javascript:void(0)">号码分布</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">直选</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">组选</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">大小</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">奇偶</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">质合</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">跨度</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">和值</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">012路</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">平均值</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">生平降</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="main-ul-box">
                                <li>
                                    <p>定位:</p>
                                    <ul class="main-ul-1">
                                        <li>
                                            <a href="javascript:void(0)">万位</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">千位</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">百位</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">各位（一星）</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="main-ul-box2">
                            <ul class="main-ul-box">
                                <li>
                                    <p>三星:</p>
                                    <ul class="main-ul-1">
                                        <li>
                                            <a href="javascript:void(0)">号码分布</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">直选</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">组选</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">大小</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">奇偶</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">质合</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">跨度</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">和值</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">012路</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">平均值</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">生平降</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="main-ul-box">
                                <li>
                                    <p>其他:</p>
                                    <ul class="main-ul-1">
                                        <li class="red">
                                            <a href="javascript:void(0)">五星走势</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">五星综合</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">大小单双</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="main-li-right" style="visibility: hidden;">
                            <div>
                                <a href="javascript:void(0)" onclick="getSscPage('gcdt/klsf')">立即投注</a>
                            </div>
                        </div>
                    </div>
                    <div class="search">
                        <ul class="search-left">
                            <li><label>遗漏数据<input type="checkbox" id="checkboxYlsj" checked="checked"></label></li>
                            <li><label>遗漏分层<input type="checkbox"  id="checkboxYlfc"></label></li>
                        </ul>
                        <ul class="search-right">
                            <li>
                                <div> <b>查询：</b></div>
                            </li>
                            <li>
                                <div class="qi xuan">
                                    <a href="javascript:void(0)" class="on30qi">近30期</a>
                                </div>
                            </li>
                            <li>
                                <div class="qi">
                                    <a href="javascript:void(0)" class="on50qi">近50期</a>
                                </div>
                            </li>
                            <li>
                                <div class="qi">
                                    <a href="javascript:void(0)" class="on100qi">近100期</a>
                                </div>
                            </li>
                            <li>
                                <div class="qi">
                                    <a href="javascript:void(0)" class="on150qi">近150期</a>
                                </div>
                            </li>
                            <li>
                                <div class="qi">
                                    <a href="javascript:void(0)" class="on200qi">近200期</a>
                                </div>
                            </li>
                            <%--<li>--%>
                                <%--<div class="qi">--%>
                                    <%--<a href="javascript:void(0)" class="oncurrentqi">今天</a>--%>
                                <%--</div>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<div class="qi">--%>
                                    <%--<a href="javascript:void(0)" class="onlatelyqi">近三天</a>--%>
                                <%--</div>--%>
                            <%--</li>--%>
                            <%--<li><div class="qi jian"><a href="javascript:void(0)">自定义查询</a><span></span></div></li>--%>
                            <li class="kuang1">
                                <div class="div">
                                    <a href="javascript:void(0)">绘图工具</a>
                                </div>
                                <div class="btn-box">
                                    <span class="btn btn-hua" onClick="change_attr(0,-1,-1)" style="background-image: url(${resPath}zst/img/zhubg.png);background-position: -102px -346px;"></span>
                                    <span class="btn btn-hua" onClick="change_attr(1,-1,-1)" style="background-image: url(${resPath}zst/img/zhubg.png); background-position: -68px -346px;"></span>
                                    <span class="btn btn-hua" onClick="change_attr(3,-1,-1)" style="background-image: url(${resPath}zst/img/zhubg.png); background-position: -34px -346px;;"></span>
                                    <span class="btn btn-hua" onClick="change_attr(4,-1,-1)" style="background-image: url(${resPath}zst/img/zhubg.png); background-position: 0 -346px"></span>
                                    <span class="btn" onClick="change_attr(5,-1,-1)" style="background-image: url(${resPath}zst/img/zhubg.png);background-position: -34px -374px;"></span>
                                    <span class="btn btn-hua" onClick="fill_canvas('rgba(0, 0, 0,1)',0,0,canvas_size.x,canvas_size.y)" style="background-image: url(${resPath}zst/img/zhubg.png);background-position: 0 -374px;"></span>
                                    <span class="btn btn-cos" style="background-image: url(${resPath}zst/img/zhubg.png);background-position: -71px -284px"></span>
                                </div>
                            </li>
                        </ul>
                    </div>

                    <div id="shuju1" class="shuju hide">
                        <div class="chu-box">
                            <div class="chu">
                                <div class="cl-40">
                                    <div class="cl-30">
                                        <div class="left cl-31">期号</div>
                                        <div class="left cl-32" style="width:150px">奖号</div>
                                        <div class="left cl-33">
                                            <div class="cl-35">
                                                <div class="left cl-34">小区</div>
                                                <div class="left cl-34">大区</div>
                                                <div class="left cl-34" style="width:309px;">012路</div>
                                            </div>
                                            <div class="cl-35 cl-36 clean">
                                                <script>
                                                    for(var i = 1; i <= 20; ++i) {
                                                        var s = '';
                                                        if(i >= 11) {
                                                            s = 'bg-1';
                                                        } else {
                                                            s = 'bg-2'
                                                        }
                                                        document.write('<var class="' + s + '"><i>' + i + '</i></var>');
                                                    }
                                                </script>
                                                <var><i style="width:100px">0路</i></var>
                                                <var><i style="width:100px">1路</i></var>
                                                <var><i style="width:100px">2路</i></var>
                                            </div>
                                        </div>
                                        <div class="left cl-32">跨度</div>
                                    </div>
                                    <div id="zhexianData"></div>
                                </div>
                            </div>

                            <div class="cl-40 clean cl-41">
                                <p>遗漏统计</p>
                            </div>
                            <div class="cl-40 clean">
                                <div class="cl-30">
                                    <div class="left cl-31">期号</div>
                                    <div class="left cl-32" style="width:150px">奖号</div>
                                    <div class="left cl-33">
                                        <div class="cl-35">
                                            <div class="left cl-34">小区</div>
                                            <div class="left cl-34">大区</div>
                                            <div class="left cl-34" style="width:309px;">012路</div>
                                        </div>
                                        <div class="cl-35 cl-36 clean">
                                            <script>
                                                for(var i = 1; i <= 20; ++i) {
                                                    var s = '';
                                                    if(i >= 11) {
                                                        s = 'bg-1';
                                                    } else {
                                                        s = 'bg-2'
                                                    }
                                                    document.write('<var class="' + s + '"><i>' + i + '</i></var>');
                                                }
                                            </script>
                                            <var><i style="width:100px">0路</i></var>
                                            <var><i style="width:100px">1路</i></var>
                                            <var><i style="width:100px">2路</i></var>
                                        </div>
                                    </div>
                                    <div class="left cl-32">跨度</div>
                                </div>
                                <div id="yiLouData">
                                    <div class="clean bg-gray">
                                        <div class="left cl-31 cl-51" style="width:250px;">出现总次数</div>
                                        <div id="cxzcs"></div>
                                    </div>
                                    <div class="clean bg-white">
                                        <div class="left cl-31 cl-51" style="width:250px;">平均遗漏值</div>
                                        <div id="pjylz"> </div>
                                    </div>
                                    <div class="clean bg-gray">
                                        <div class="left cl-31 cl-51" style="width:250px;">最大遗漏值</div>
                                        <div id="zdylz"></div>
                                    </div>
                                    <div class="clean bg-white">
                                        <div class="left cl-31 cl-51" style="width:250px;">最大连出值</div>
                                        <div id="zdlcz"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="shuju2" class="shuju hide">
                        <div class="biao">
                            <div id="main1" style="width: 1081px;height:600px;background: #fff"></div>
                        </div>
                    </div>
                    <div id="shuju3" class="shuju hide">
                        <div id="main2" style="width: 1081px;height:500px;"></div>
                    </div>
                    <div id="shuju4" class="shuju hide">
                        <table class="tongji">
                            <thead>
                            <tr>
                                <th colspan="2">号码</th>
                                <th>出现总次数</th>
                                <th>平均遗漏值</th>
                                <th>最大遗漏值</th>
                                <th>最大连出值</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                    <div id="shuju5" class="shuju">
                        <table style="width:500px;">
                            <thead>
                            <tr class="bghui">
                                <th>期号</th>
                                <th>开奖日期</th>
                                <th>开奖号码</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                    <div class="shuoming qc">
                        <div class="shuomingleft">
                            <div class="tou">
                                <h3>参数说明</h3>
                            </div>
                            <div class="jieshi">
                                <p><b>大小：</b> 号码01-20中，01-10为小，11-20为大。</p>
                                <p><b>奇偶：</b> 能被2整除的号码为偶数，不能被2整除的号码为奇数。号码01-20中奇偶数如下：</p>
                                <p>[奇数] 01 03 05 07 09 11 13 15 17 19</p>
                                <p>[偶数] 02 04 06 08 10 12 14 16 18 20</p>
                                <p><b>质合：</b> 只能被1和自身整除的数为质数，除了能被1和自身整除，还能被其它数整除的数为合数。号码01-20中质合数如下：</p>
                                <p>[质数] 01 02 03 05 07 11 13 17 19</p>
                                <p>[合数] 04 06 08 09 10 12 14 15 16 18 20</p>
                                <p><b>012路：</b> 号码01-20中，除3余0的为0路，除3余1的为1路，除3余2的为2路。</p>
                                <p><b>“0路”为除3余0数据：</b> 03、06、09、12、15、18；</p>
                                <p><b>“1路”为除3余1数据：</b> 01、04、07、10、13、16、19；</p>
                                <p><b>“2路”为除3余2数据：</b> 02、05、08、11、14、17、20；</p>
                                <p><b>跨度：</b> 开奖号码中最大号码与最小号码的差。</p>
                                <p><b>遗漏分层：</b> 将当前遗漏按照“1-5，6-11，12-无穷大”分别用黑色、蓝色、红色标识。</p>
                                <p><b>分隔线：</b> 每五期使用分隔线，使横向导航更加清晰。</p>
                                <p><b>出现总次数：</b> 统计期数内实际出现的次数。</p>
                                <p><b>遗漏：</b> 自上期开出到本期间隔的期数。</p>
                                <p><b>平均遗漏：</b> 统计期数内遗漏的平均值。计算公式：平均遗漏＝统计期数/(出现次数+1)。</p>
                                <p><b>最大遗漏：</b> 统计期数内遗漏的最大值。</p>
                                <p><b>当前遗漏：</b> 自上期开出到当前期所间隔的期数。</p>
                                <p><b>最大连出值：</b> 统计期数内连续开出的最大值。</p>
                            </div>
                        </div>
                        <div class="shuomingright" style="width:500px;">
                            <div class="tou">
                                <h4>第 <span id="number"></span> 期 &nbsp <font id="openDate"></font>开奖</h4>
                            </div>
                            <a href="javascript:void(0)" onclick="getSscPage('gcdt/klsf')"><img class="btnjiang" src="${resPath}zst/img/jiang.png" alt=""></a>
                            <div class="jiezhi">
                                <h3>
                                    <p>
                                        <font id="tip"></font>
                                        <span id="leftTime"></span>
                                    </p>
                                </h3>
                            </div>
                            <div class="zhushi">每天销售84期&nbsp&nbsp每10分钟一期</div>
                            <div class="tongzhi">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="xiajiao">
        快速购买 福彩3D
    </div>
    <div class="mb">
    </div>
</div>

<canvas id="canvas" width="1660px" height="570px" style="position:absolute;top:265px;left:243px;z-index: -10"></canvas>
<canvas id="canvas2" width="1660px" height="570px" style="position:absolute;top:265px;left:243px;z-index: -10"></canvas>

<c:import url="../../common/commonJs.jsp" />
<c:import url="common/commonJs.jsp" />
<script>
    $(function() {

        $(".btn-navs li").click(function(e) {
            $(".shuju").hide();
            $("#" + $(this).data("id")).show();
            $(this).attr("class", "fff").siblings().removeClass();
            if($(this).data("id") == 'shuju1' || $(this).data("id") == 'shuju2' || $(this).data("id") == 'shuju3') {
                initHuatu($(this).data("contentid"));
            } else {
                clearHuatu();
            }
        });

        var type = '${param.type}';
        if(typeof type == 'undefined' || type == '' || isNaN(type)) {
            type = 1;
        } else {
            type = Tools.parseInt(type);
        }
        $("[data-id='shuju" + type + "']").trigger("click");
        $(".search-right .qi a").eq(0).trigger("click");
    });

    function ajaxGetData(playGroupId, pageSize, startT, endT) {
        var data = {};
        data.pageIndex = 1;
        if(null != playGroupId) {
            data.playGroupId = playGroupId;
        }
        if(null != pageSize) {
            data.pageSize = pageSize;
        }
        if(null != startT) {
            data.startT = startT;
        }
        if(null != endT) {
            data.endT = endT;
        }

        ajaxRequest({
            url: "<%=basePath%>ssc/ajaxGetHistory.json",
            data: data,
            beforeSend: function() {
                parent.showLoading();
            },
            success: function(json) {
                if(json.result != 1) {
                    return;
                }
                var data = json.sscHistoryList;
                data.reverse();
                // 折线
                zhexian(data);
                // k线
                kxian(data);
                // 直方图
                zhifang(data);
                // 历史数据
                lssj(data);
                parent.hideLoading();

                $(".btn-navs li").each(function() {
                    if($(this).hasClass("fff")) {
                        initHuatu($(this).data("contentid"));
                        return;
                    }

                });
            }
        });
    }

    $(function() {
        $("#checkboxZhexian").change(function() {
            if($(this).is(":checked")) {
                $(".zhexian").show();
            } else {
                $(".zhexian").hide();
            }
        });

        $("#checkboxYlsj").change(function() {
            if($(this).is(":checked")) {
                $(".transparent").addClass("not-transparent");
            } else {
                $(".transparent").removeClass("not-transparent");
            }
        });

        $("#checkboxYlfc").change(function() {
            if($(this).is(":checked")) {
                $(".ylfc").addClass("ylfc-bg");
            } else {
                $(".ylfc").removeClass("ylfc-bg");
            }
        });
    });
</script>
<script>
    var playGroupId = 11;

    function lssj(data) {
        var str = '';
        $.each(data, function(index, value) {
            str += '<tr>';
            str += '<td>' + value.number + '</td>';
            str += '<td>' + Tools.formatDate(value.openTime) + '</td>';
            str += '<td>';
            var arr = value.openCode.split(",");
            for(var i = 0; i < arr.length; ++i) {
                str += '<span class="bg-10">' + arr[i] + '</span>';
            }
            str += '</td>';
            str += '</tr>';
        });
        $("#shuju5 table tbody").html(str);
    }

    function zhifang(data) {

        // 基于准备好的dom，初始化echarts实例
        var myChart2 = echarts.init(document.getElementById('main2'));
        // 指定图表的配置项和数据
        var subtext = "广东快乐十分";
        if(data.length > 0) {
            subtext += " 第" + data[0].number + '期 ~ ' + "第" + data[data.length - 1].number + '期';
        }
        var option = {
            title: {
                text: '广东快乐十分直方图',
                subtext: subtext,
                x: 'center'
            },
            grid: {
                left: '1%',
                right: '5%',
                containLabel: true
            },
            tooltip: {
                show: true,
                trigger: 'axis',
                showDelay: 0, //显示延时，添加显示延时可以避免频繁切换
                hideDelay: 50, //隐藏延时
                transitionDuration: 0, //动画变换时长
                backgroundColor: 'rgba(0,0,0,0.7)', //背景颜色（此时为默认色）
                borderRadius: 8, //边框圆角
                padding: 10, // [5, 10, 15, 20] 内边距
                position: function(p) {
                    return [p[0] + 10, p[1] - 10];
                },
                formatter: function(params, ticket, callback) {
                    var res = "基本号码" + ' : ' + params[0].name;
                    for(var i = 0, l = params.length; i < l; i++) {
                        res += '<br/>' + params[i].seriesName + ' : ' + params[i].value; //鼠标悬浮显示的字符串内容
                    }
                    return res;
                }
            },
            xAxis: {
                type: 'category',
                axisTick: {
                    alignWithLabel: true
                },
                data: [],
                name: '号码'
            },
            yAxis: [{
                type: 'value',
                splitNumber: 10,
                triggerEvent: true,
                name: '出现次数'
            }],
            series: [{
                name: '出现次数',
                type: 'bar',
                data: [],
                legendHoverLink: true,
                label: {
                    normal: {
                        show: true,
                        position: 'top',
                        textStyle: {
                            color: '#000'
                        }
                    }
                },
                markPoint: {
                    symbol: 'pin',
                    symbolSize: 50,
                    silent: true,
                    animation: true,
                },
                barWidth: '27px',
                barGap: '30%',
                markArea: {},
                itemStyle: {
                    normal: {
                        color: ['#6DB8FF']
                    }
                }
            }]
        };
        var yData = [];
        for(var i = 0; i < 20; ++i) {
            yData[i] = 0;
            option.xAxis.data.push(i + 1);
        }
        $.each(data, function(index, value) {
            var openCode = value.openCode;
            var arr = openCode.split(",");
            for(var i = 0; i < arr.length; ++i) {
                yData[Tools.parseInt(arr[i]) - 1]++;
            }
        });
        option.series[0].data = yData;
        // 使用刚指定的配置项和数据显示图表。
        myChart2.setOption(option);
    }

    function kxian(data) {
        // 基于准备好的dom，初始化echarts实例
        var myChart1 = echarts.init(document.getElementById('main1'));

        // 指定图表的配置项和数据
        var subtext = "广东快乐十分";
        if(data.length > 0) {
            subtext += " 第" + data[0].number + '期 ~ ' + "第" + data[data.length - 1].number + '期';
        }
        var option = {
            title: {
                text: '广东快乐十分K线图',
                subtext: subtext,
                x: 'center'
            },
            xAxis: [{
                axisLabel: {
                    rotate: -60,
                },
                type: 'category',
                boundaryGap: false,
                data: []
            }],
            tooltip: {
                trigger: 'axis',
                formatter: function(params) {
                    var openCode = params[0].data.openCode;

                    var res = '';
                    res += '数值：' + Tools.parseInt(openCode.split(",")[0]);
                    res += '<br/>期数：' + params[0].name;
                    res += '<br/><font class="red">奖号：' + openCode + "</font>";
                    return res;
                }
            },
            yAxis: [{
                type: 'value',
                name: '号码'
            }],
            grid: {
                left: '1%',
                right: '2%',
                containLabel: true,
                y2: 120
            },
            series: [{
                symbol: 'circle', //图标形状
                symbolSize: 6, //图标尺寸
                type: 'line',
                stack: '',
                itemStyle: {
                    normal: {
                        color: "#6DB8FF",
                        lineStyle: {
                            color: '#6DB8FF'
                        }
                    }
                },
                label: {
                    normal: {
                        show: true,
                        position: 'top',
                        textStyle: {
                            color: '#000'
                        }
                    }
                },
                areaStyle: {
                    normal: {
                        textStyle: {
                            fontSize: 20,
                            color: 'red'
                        }
                    }
                },
                data: [],
            }]
        };
        $.each(data, function(index, value) {
            option.xAxis[0].data.push(value.number);
            option.series[0].data.push({
                value: Tools.parseInt(value.openCode.split(",")[0]),
                openCode: value.openCode
            });
        });

        myChart1.setOption(option);
    }

    function zhexian(data) {
        var str = '';
        for(var i = 0; i < data.length; i++) {
            // qihao
            str += '<div class="cl-30 clean">';
            str += '<div class="left cl-31 number">' + data[i].number + '</div>';
            str += '<div class="left cl-32 openCode" style="width:150px">' + data[i].openCode + '</div>';
            var kjData = data[i].openCode.split(",");

            var tmp = [];
            $.each(kjData, function(index, value) {
                tmp[Tools.parseInt(value)] = 1;
            });

            str += '<div class="cl-35 cl-36">';
            for(var j = 1; j <= 20; ++j) {
                var s = j >= 11 ? 'bg-1' : 'bg-2';
                var s2 = j >= 11 ? 'bg-4' : 'bg-5';
                if(tmp[j] == 1) {
                    str += '<var class="' + s + ' i_' + j + '"><i data-num="' + j + '" class="' + s2 + '">' + j + '</i></var>';
                } else {
                    str += '<var class="' + s + ' i_' + j + '"><i></i></var>';
                }
            }

            // 012路
            var str1 = [],
                    str2 = [],
                    str3 = [];
            for(var j = 1; j <= 20; ++j) {
                if(tmp[j] == 1) {
                    if(j % 3 == 0) {
                        str1.push(j);
                    } else if(j % 3 == 1) {
                        str2.push(j);
                    } else {
                        str3.push(j);
                    }
                }
            }
            str += '<var><i style="width:100px">' + str1.join("&nbsp;") + '</i></var>';
            str += '<var><i style="width:100px">' + str2.join("&nbsp;") + '</i></var>';
            str += '<var><i style="width:100px">' + str3.join("&nbsp;") + '</i></var>';

            //跨度
            var kuadu = 0;
            $.each(kjData, function(index1, value1) {
                $.each(kjData, function(index2, value2) {
                    var tmp = Math.abs(Tools.parseInt(value1) - Tools.parseInt(value2));
                    kuadu = tmp > kuadu ? tmp : kuadu;
                })
            });
            str += '<var><i style="width:97px">' + kuadu + '</i></var>';

            str += '</div>';
        }
        $("#zhexianData").html(str);
        // 遗漏
        renderYilou(data);

        if($("#checkboxYlsj").is(":checked")) {
            $(".transparent").addClass("not-transparent");
        } else {
            $(".transparent").removeClass("not-transparent");
        }
    }

    function renderYilou(data) {
        // 遗漏统计
        var yilou = [];
        for(var j = 1; j <= 20; ++j) {
            yilou[j] = {
                cxCs: 0, // 出现次数
                maxLcCs: 0, // 最大连出次数
                ylArr: [] // 遗漏次数
            };
        }

        var tmpArr = [];

        $.each(data, function(index, value) {
            tmpArr[index] = [];
            for(var i = 1; i <= 20; ++i) {
                tmpArr[index][i] = 0;
            }
            var openCodeArr = value.openCode.split(",");
            $.each(openCodeArr, function(index2, value2) {
                tmpArr[index][Tools.parseInt(value2)]++;
            });
        });

        for(var j = 1; j <= 20; ++j) {
            var obj = yilou[j];
            var tmpYlCs = 0; // 连续遗漏次数
            var tmpLcCs = 0; // 连出次数

            $.each(tmpArr, function(index, value) {
                var tmpValue = Tools.parseInt(value[j]);

                if(tmpValue != 1) { // 遗漏
                    tmpYlCs++;
                    if(tmpLcCs > obj.maxLcCs) {
                        obj.maxLcCs = tmpLcCs;
                    }
                    tmpLcCs = 0;
                } else { // 中
                    obj.cxCs++;
                    tmpLcCs++;

                    obj.ylArr.push(tmpYlCs);
                    tmpYlCs = 0;
                }
            });
        }
        var str1 = '',
                str2 = '',
                str3 = '',
                str4 = '';
        for(var j = 1; j <= 20; ++j) {
            var obj = yilou[j];
            // 出现次数
            str1 += '<var><i>' + obj.cxCs + '</i></var>';

            // 平均遗漏值&最大遗漏值
            var maxYl = 0;
            if(obj.ylArr.length > 0) {
                var sumYl = 0;
                $.each(obj.ylArr, function(index, value) {
                    sumYl += value;
                    maxYl = value > maxYl ? value : maxYl;
                });
                str2 += '<var><i>' + Math.floor(sumYl / obj.ylArr.length) + '</i></var>';
                str3 += '<var><i>' + maxYl + '</i></var>';
            } else {
                str2 += '<var><i>0</i></var>';
                str3 += '<var><i>0</i></var>';
            }

            // 最大连出值
            str4 += '<var><i>' + obj.maxLcCs + '</i></var>';
        }

        str1 += '<var><i style="width:100px"></i></var>';
        str1 += '<var><i style="width:100px"></i></var>';
        str1 += '<var><i style="width:100px"></i></var>';
        str1 += '<var><i style="width:97px"></i></var>';
        str2 += '<var><i style="width:100px"></i></var>';
        str2 += '<var><i style="width:100px"></i></var>';
        str2 += '<var><i style="width:100px"></i></var>';
        str2 += '<var><i style="width:97px"></i></var>';
        str3 += '<var><i style="width:100px"></i></var>';
        str3 += '<var><i style="width:100px"></i></var>';
        str3 += '<var><i style="width:100px"></i></var>';
        str3 += '<var><i style="width:97px"></i></var>';

        $("#cxzcs").html(str1);
        $("#pjylz").html(str2);
        $("#zdylz").html(str3);
        $("#zdlcz").html(str4);

        // 遗漏数据
        for(var i = 1; i <= 20; ++i) {
            var tmpCount = 0;
            var obj = $(".i_" + i + " i");
            $(obj).each(function() {
                if(typeof $(this).data('num') == 'undefined') {
                    tmpCount = tmpCount + 1;
                    $(this).html(tmpCount).addClass("transparent");
                } else {
                    tmpCount = 0;
                }
            });
        }

        // 遗漏分层
        for(var i = 1; i <= 20; ++i) {
            var obj = $(".i_" + i + " i");
            for(var j = obj.length - 1; j >= 0; --j) {
                var o = obj[j];
                if(typeof $(o).data('num') == 'undefined') {
                    $(o).parent().addClass("ylfc");
                } else {
                    break;
                }
            }
        }

        if($("#checkboxYlfc").is(":checked")) {
            $(".ylfc").addClass("ylfc-bg");
        } else {
            $(".ylfc").removeClass("ylfc-bg");
        }
    }
</script>
<c:import url="common/bodyEnd.jsp" />