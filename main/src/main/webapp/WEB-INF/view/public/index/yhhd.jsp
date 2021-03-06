<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../common/bodyStart.jsp"/>
<style>
    td, th{border: 1px solid #DDD;}
</style>
<%--<c:import url="../common/checkIsChildFrame.jsp"/>--%>
<div class="process">
    <div class="wid1">
        <div class="layout">
            <div class="monty">
                <ul>
                    <li class="acti">全部</li>
                    <script>
                        for (var i = 0; i < 3; ++i) {
                            var tmp = new Date();
                            tmp.setMonth(tmp.getMonth() - 1 * i);
                            var startMonth = tmp.getFullYear() + "-" + (tmp.getMonth() + 1) + '-1 0:0:0';
                            tmp.setMonth(tmp.getMonth() + 1);
                            var endMonth = tmp.getFullYear() + "-" + (tmp.getMonth() + 1) + '-1 0:0:0';
                            document.write('<li class="monthnum" data-starttime="' + startMonth + '" data-endtime="' + endMonth + '">' + ((startMonth.split("-")[1])) + '月</li>');
                        }
                        var tmp = new Date();
                        tmp.setMonth(tmp.getMonth() - 2);
                        var endMonth = tmp.getFullYear() + "-" + (tmp.getMonth() + 1) + '-1 0:0:0';
                        document.write('<li class="monthnum" data-endtime="' + endMonth + '">其他</li>');
                    </script>
                </ul>
            </div>
            <div class="monthdetail">
            </div>
        </div>
    </div>
    <div class="Customerservice" style="right: 462px;">
        <ul>
            <li><div class="pict"><a href="${kefuUrl}" target="_blank"><img src="${resPath}img/ico68.png" alt=""></a></div></li>
            <li><div class="pict"><a href="#"><img src="${resPath}img/ico69.png" alt=""></a></div></li>
        </ul>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/jsCommonLogin.jsp"/>
<script>
    tabs_cg(".process .layout .monty ul li", "", "click", "acti", "", "", 1);
    autobox(".Customerservice", 1, 1140, 0);

    $(function () {
        getData(null, null);

        $('.monty ul li').click(function () {
            var startTime = $(this).data("starttime");
            var endTime = $(this).data("endtime");
            getData(startTime, endTime);
            //console.log(startTime);
        });
    });

    function getData(startTime, endTime) {
        ajaxRequest({
            url: "<%=basePath%>promotion/getList.json",
            data: {
                startTime: startTime,
                endTime: endTime
            },
            beforeSend: function () {
                showLoading();
            },
            success: function (json) {
                if (json.result != 1) {
                    return;
                }

                var str = '';

                var isFirst = true;
                var lastDate = '';
                $.each(json.promotionList, function (index, value) {
                    var date = dateFormat(value.createTime, "yyyy-MM-dd");
                    if (date != lastDate) {
                        isFirst = true;
                    } else {
                        isFirst = false;
                    }
                    lastDate = date;

                    var obj = [];
                    obj.year = dateFormat(value.createTime, "yyyy");
                    obj.month = dateFormat(value.createTime, "mm");
                    obj.day = dateFormat(value.createTime, "dd");
                    obj.isFirst = isFirst;
                    obj.title = value.title;
                    obj.content = value.content;
                    obj.title = value.name;
                    obj.imageData = value.bigImageData;
                    obj.bigImageId = value.bigImageId;
                    obj.startTime = dateFormat(value.startTime, "yyyy-mm-dd hh:MM:ss");
                    obj.endTime = dateFormat(value.endTime, "yyyy-mm-dd hh:MM:ss");
                    obj.createTime = dateFormat(value.createTime, "yyyy-mm-dd hh:MM:ss");
                    var html = template("template", obj);
                    str += html;
                });

                $(".monthdetail").html(str);

                var arrsT = [], arreT = [];
                $('.monthdetail .list_tems .text .startTi').each(function () {
                    arrsT.push($(this).html());
                });
                $('.monthdetail .list_tems .text .endTi').each(function () {
                    arreT.push($(this).html());
                });

//                var myDate = new Date();//获取系统当前时间
//                var currentT = dateFormat(myDate.getTime(), "yyyy-mm-dd hh:MM:ss");
//
//                for (var i = 0; i < arrsT.length; i++) {
//                    var sT = dateFormat(arrsT[i], "yyyy-mm-dd hh:MM:ss");
//                    var eT = dateFormat(arrsT[i], "yyyy-mm-dd hh:MM:ss");
//                    if (sT == currentT && eT == currentT) {
//                        $('.monthdetail .list_tems:eq(' + i + ') .text .hdsj').html('活动时间： 永久有效');
//                    }
//                }

            },
            complete: function () {
                shoutext(".process .layout .list_tems .text a", ".down");
                hideLoading();
            }
        });
    }
    function showLoading() {
        layer.load(2, {
            shade: [0.1, '#000'] //0.1透明度的白色背景
        })
    }
    function hideLoading() {
        layer.closeAll();
    }
</script>
<script type="text/html" id="template">
    <div class="list_tems">
        {{if isFirst}}
        <div class="date">
            <span>{{year}}</span>
            <h3>{{month}}.{{day}}</h3>
        </div>
        {{/if}}
        <h2>{{title}}<p>发布时间：{{createTime}}</p></h2>
        <div class="pict repict">
            <img src="<%=basePath%>images/{{bigImageId}}" alt="">
        </div>
        <div class="text">
            <p class="hdsj">活动时间：
                {{if (startTime == null && endTime == null) || (startTime == endTime)}}
                永久有效
                {{else}}
                <span class="startTi">{{startTime}}</span> 至 <span class="endTi">{{endTime}}</span>
                {{/if}}
            </p>
            <div class="down" style="display: none;">
                {{#content}}
            </div>
            <a>查看活动内容&gt;&gt;</a>
        </div>
    </div>
</script>
<c:import url="../common/bodyEnd.jsp"/>
