<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
    String hostName = request.getServerName().replace("www.", "");
%>
<div class="footer">
    <div class="footer_t">
        <div class="container clearfix">
            <div class="left footer_t1">
                <img src="${resPath}images/index_78.png?v=0.0.1" class="footer_t1_1" />
                <p>
                    <img  src="<%=basePath%>images/${qrcode.codeId}.png" class="footer_t1_2" />
                </p>
                <p>
                    扫一扫 手机购彩更方便
                </p>
            </div>
            <div class="footer_menu_main clearfix">
                <div class="footer_menu left">
                    <p class="footer_menu_t">
                        <img src="${resPath}images/common/index84.png" />
                        平台优势
                    </p>
                    <ul>
                        <li>
                            <a href="javascript:void(0);">
                                <img src="${resPath}images/common/index_93.png" />
                                账户安全
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <img src="${resPath}images/common/index-36.png" />
                                购彩简单
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <img src="${resPath}images/common/index2_92.png" />
                                领奖方便
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <img src="${resPath}images/common/index_135.png" />
                                提款快速
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="footer_menu left">
                    <p class="footer_menu_t">
                        <img src="${resPath}images/common/index81.png" />
                        账户相关
                    </p>
                    <ul class="footer_menu_2">
                        <li>
                            <a href="<%=basePath%>help/question/zc_1.html">
                                如何注册账号
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/mima_3.html">
                                怎么找回登录密码
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/mima_1.html">
                                如何修改手机号码
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/zc_5.html">
                                如何修改真实姓名
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="footer_menu left">
                    <p class="footer_menu_t">
                        <img src="${resPath}images/common/index_87.png" />
                        充值购彩
                    </p>
                    <ul class="footer_menu_2">
                        <li>
                            <a href="<%=basePath%>help/question/cz_1.html">
                                如何进行充值
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/mima_2.html">
                                如何购买彩票
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/tk_10.html">
                                如何查询购彩记录
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/aq.html">
                                在本站购彩安全吗
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="footer_menu left">
                    <p class="footer_menu_t">
                        <img src="${resPath}images/common/index-31.png" />
                        兑奖提款
                    </p>
                    <ul class="footer_menu_2">
                        <li>
                            <a href="<%=basePath%>help/question/tk_1.html">
                                怎样进行兑奖
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/tk_5.html">
                                如何进行提款
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/tk_6.html">
                                提款是否收手续费
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/tk_9.html">
                                提款不成功怎么办
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer_b">
        <div class="container">
            <img src="${resPath}images/index112.png" />
            <p class="webDbxx"></p>
            <p class="mt30"><span><%=hostName%>&nbsp;&nbsp; 郑重提示：彩票有风险，投注需谨慎</span> 不向未满18周岁的青少年出售彩票</p>
        </div>
    </div>
</div>
