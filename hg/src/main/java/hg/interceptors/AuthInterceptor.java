package hg.interceptors;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 权限拦截
 */
public class AuthInterceptor extends HandlerInterceptorAdapter {

    private Log log = LogFactory.getLog(getClass());

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        String uri = request.getRequestURI();
////        log.info("uri:" + uri);
//
//        String uidStr = request.getParameter("uid");
//        String token = request.getParameter("token");
//        if (StringUtils.isBlank(uidStr) || StringUtils.isBlank(token)) {
//            Cookie[] cookies = request.getCookies();
//            Cookie cookie = null;
//            if (cookies != null) {
//                for (int i = 0; i < cookies.length; i++) {
//                    cookie = cookies[i];
//                    if (cookie.getName().equals("uid")) {
//                        uidStr = cookie.getValue();
//                    }
//                    if (cookie.getName().equals("token")) {
//                        token = cookie.getValue();
//                    }
//                }
//            }
//        }
//
//        String companyShortName = SessionUtils.getSessionCompanyShortName(request);
//        if (StringUtils.isBlank(companyShortName)) {
//            CompanyShortNameResult companyShortNameResult = ApiUtils.getCompanyShortName(request.getServerName());
//            if (null != companyShortNameResult) {
//                companyShortName = companyShortNameResult.getCompanyShortName();
//            }
//            SessionUtils.setSessionCompanyShortName(request, companyShortName);
//        }
//
//        boolean flag = true;
//        if (handler instanceof HandlerMethod) {
//            Authentication authentication = ((HandlerMethod) handler).getMethod().getAnnotation(Authentication.class);
//            if (null != authentication) {   // 有权限控制的就要检查
//                if (StringUtils.isBlank(uidStr) || StringUtils.isBlank(token) || ApiUtils.checkOnline(Long.parseLong(uidStr), token, companyShortName).getResult() != 1) {    // 没登录就要求登录
//                    flag = false;
//                    if (uri.indexOf(".json") > 0) {
//                        CommonResult commonResult = new CommonResult();
//                        commonResult.setResult(-101);
//                        commonResult.setDescription("请您先登录");
//
//                        PrintWriter out = null;
//                        try {
//                            response.setContentType("text/html; charset=UTF-8");
//                            out = response.getWriter();
//                            out.write(JSONUtils.toJSONStr(commonResult));
//                        } finally {
//                            out.flush();
//                            out.close();
//                        }
//                    } else if (uri.indexOf(".html") > 0) {
//                        String path = request.getContextPath();
//                        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/login.html";
//
//                        response.sendRedirect(basePath);
//                    }
//                    return false;
//                }
//
//                request.setAttribute("uid", uidStr);
//                request.setAttribute("token", token);
//            }
//        }
//
//        if (uri.indexOf(".html") > 0) {
//            if (StringUtils.isNotBlank(uidStr) && StringUtils.isNotBlank(token) && StringUtils.isNotBlank(companyShortName)) {
//                String path = request.getContextPath();
//                String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
//                ApiUtils.updateOnlineInfo(Long.parseLong(uidStr), token, basePath + uri,companyShortName);
//            }
//        }
//        return flag;
        return Boolean.FALSE;
    }
}
