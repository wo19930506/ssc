package project38.ssc.web.controller;

import project38.api.common.helper.IPHelper;
import project38.api.common.result.CommonResult;
import org.apache.commons.collections.map.HashedMap;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import project38.api.result.*;
import project38.ssc.web.auth.Authentication;
import project38.api.utils.ApiUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;


/**
 * 用户模块
 */
@Controller
@RequestMapping("/member")
public class MemberController extends BaseController {
    private static final Log log = LogFactory.getLog(MemberController.class);

    @Autowired
    private HttpServletRequest httpServletRequest;

//    /**
//     * 注册页面
//     *
//     * @return
//     */
//    @RequestMapping(value = "/register.html", method = RequestMethod.GET)
//    public ModelAndView register() {
//        Map<String, Object> modelMap = new HashMap<String, Object>();
//        return this.renderView("member/register", modelMap);
//    }
//
    /**
     * ajax注册请求
     *
     * @return
     */
    @RequestMapping(value = "/ajaxRegister.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public LoginResult ajaxRegister(String account, String password, String yzm, String name, Long agentId) {
        LoginResult result = new LoginResult();
        try {
            if (StringUtils.isBlank(account)) {
                result.setResult(-1);
                result.setDescription("账号不能为空");
                return result;
            }

            if (StringUtils.isBlank(password) || password.length() != 32) {
                result.setResult(-2);
                result.setDescription("密码不能为空");
                return result;
            }

            if (StringUtils.isBlank(yzm)) {
                result.setResult(-2);
                result.setDescription("验证码不能为空");
                return result;
            }

            HttpSession session = httpServletRequest.getSession();
            String yzmCode = (String) session.getAttribute("yzmCode");
            session.removeAttribute("yzmCode");
            if (StringUtils.isBlank(yzmCode)) {
                result.setResult(-4);
                result.setDescription("验证码已过期，请重新获取");
                return result;
            }

            if (!StringUtils.equals(yzmCode, yzm)) {
                result.setResult(-5);
                result.setDescription("验证码不正确");
                return result;
            }
            // 接口返回数据
            String ip = IPHelper.getIpAddr(httpServletRequest);
            CommonResult responseResult = ApiUtils.register(account, password, name, ip, httpServletRequest.getServerName(), null, agentId);
            if (responseResult.getResult() == 1) {
                result = ApiUtils.login(account, password, ip, 0);
                if (result.getResult() != 1) {
                    result.setResult(-6);
                    result.setDescription("注册成功，请登录");
                }
            }

            // 返回前台
            result.setResult(responseResult.getResult());
            result.setDescription(responseResult.getDescription());
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }
        return result;
    }
//
//    /**
//     * 注册页面
//     *
//     * @return
//     */
//    @RequestMapping(value = "/login.html", method = RequestMethod.GET)
//    public ModelAndView login() {
//        Map<String, Object> modelMap = new HashMap<String, Object>();
//        return this.renderView("user/login", modelMap);
//    }
//

    /**
     * ajax请求登录
     *
     * @param httpServletResponse
     * @param account
     * @param password
     * @return
     */
    @RequestMapping(value = "/ajaxLogin.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public LoginResult ajaxLogin(HttpServletResponse httpServletResponse, String account, String password, String yzm) {
        LoginResult result = new LoginResult();
        try {
            if (StringUtils.isBlank(account)) {
                result.setResult(-1);
                result.setDescription("账号不能为空");
                return result;
            }

            if (StringUtils.isBlank(password) || password.length() != 32) {
                result.setResult(-2);
                result.setDescription("密码不能为空");
                return result;
            }

            if (StringUtils.isBlank(yzm)) {
                result.setResult(-3);
                result.setDescription("验证码不能为空");
                return result;
            }

            HttpSession session = httpServletRequest.getSession();
            String yzmCode = (String) session.getAttribute("yzmCode");
            session.removeAttribute("yzmCode");

            if (StringUtils.isBlank(yzmCode)) {
                result.setResult(-4);
                result.setDescription("验证码已过期，请重新获取");
                return result;
            }

            if (!StringUtils.equals(yzmCode, yzm)) {
                result.setResult(-5);
                result.setDescription("验证码不正确");
                return result;
            }

            // 接口返回数据
            result = ApiUtils.login(account, password, IPHelper.getIpAddr(httpServletRequest), 2);

            if (1 == result.getResult()) {
                result.setWebNoticeList(ApiUtils.getPopupNoticeList(result.getUserId(), result.getToken(), null, null).getWebNoticeList());
            }
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }
        return result;
    }

    /**
     * 会员中心IFRAME
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest httpServletRequest) throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);


        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("logoData", ApiUtils.getLogo(2));
        modelMap.put("icoData", ApiUtils.getLogo(4));
        modelMap.put("serverTime", ApiUtils.getServerTime());
        modelMap.put("userSession", ApiUtils.getUserSession(uid, token));
        modelMap.put("kefu", ApiUtils.getKefu());

        return this.renderView("member/index", modelMap);
    }

    /**
     * 会员中心首页
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/main.html", method = RequestMethod.GET)
    public ModelAndView main(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        modelMap.put("userLastInfo", ApiUtils.getUserLastInfo(uid, token));
        modelMap.put("bindStatus", ApiUtils.getBindStatus(uid, token));
        modelMap.put("userSession", ApiUtils.getUserSession(uid, token));
        modelMap.put("userInboxList", ApiUtils.getUserInboxList(uid, token, null, null, null, 1, 4).getUserInboxList());
        modelMap.put("promotionList", ApiUtils.getPromotion(1, 4, null, null).getPromotionList());

        return this.renderView("member/main", modelMap);
    }

    /**
     * 个人资料
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/selfInfo.html", method = RequestMethod.GET)
    public ModelAndView selfInfo(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        modelMap.put("userSession", ApiUtils.getUserSession(uid, token));

        return this.renderView("member/selfInfo", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhcz.html", method = RequestMethod.GET)
    public ModelAndView zhcz(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/zhcz", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhcz/yhzz.html", method = RequestMethod.GET)
    public ModelAndView zhczYhzz(HttpServletRequest httpServletRequest) throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        modelMap.put("userSession", ApiUtils.getUserSession(uid, token));
        modelMap.put("bankCardListResult", ApiUtils.getSystemBankCard(uid, token));
        //获取在线支付信息
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3}));
        //支付宝支付信息
        modelMap.put("zfbzfInfo", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3}));
        //微信支付信息
        modelMap.put("wxzfInfo", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3}));
        //QQ支付信息
        modelMap.put("qqzfInfo", ApiUtils.getSystemPayonline(uid, token, 4, new Integer[] {1, 3}));

        //微信转账信息
        modelMap.put("wxzzInfo", ApiUtils.getSystemWeixin(uid, token));
        //支付宝转账信息
        modelMap.put("zfbzzInfo", ApiUtils.getSystemAlipay(uid, token));
        //财付通转账信息
        modelMap.put("cftzzInfo", ApiUtils.getSystemTenpay(uid, token));
        // QQ转账
        modelMap.put("qqzzList", ApiUtils.getSystemQq(uid, token));

        modelMap.put("depositChannel", ApiUtils.getDepositChannel());
        return this.renderView("member/zhcz/yhzz", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/jfmx/hylb.html", method = RequestMethod.GET)
    public ModelAndView jfmxHylb(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }

        modelMap.put("userSession", ApiUtils.getUserSession(uid, token));
//        modelMap.put("bankCardListResult", ApiUtils.getSystemBankCard(uid, token));
        return this.renderView("member/jfmx/hylb", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/jfmx/tjhy.html", method = RequestMethod.GET)
    public ModelAndView jfmxTjhy(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }

        return this.renderView("member/jfmx/tjhy", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/jfmx/cwbb.html", method = RequestMethod.GET)
    public ModelAndView jfmxCwbb(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/jfmx/cwbb", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/jfmx/tdls.html", method = RequestMethod.GET)
    public ModelAndView jfmxTdls(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/jfmx/tdls", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/jfmx/tdbb.html", method = RequestMethod.GET)
    public ModelAndView jfmxTdbb(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/jfmx/tdbb", modelMap);
    }


    @Authentication
    @RequestMapping(value = "/jfmx/tdtz.html", method = RequestMethod.GET)
    public ModelAndView jfmxTdtz(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        SscPlayGroupListResult sscplaylist = ApiUtils.getSscPlayGroupList();
        modelMap.put("sscplaylist", sscplaylist);

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/jfmx/tdtz", modelMap);
    }


    @Authentication
    @RequestMapping(value = "/zhcz/zxzf.html", method = RequestMethod.GET)
    public ModelAndView zhczZxzf(HttpServletRequest httpServletRequest) throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        //获取在线支付信息
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3}));
        //支付宝支付信息
        modelMap.put("zfbzfInfo", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3}));
        //微信支付信息
        modelMap.put("wxzfInfo", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3}));
        //QQ支付信息
        modelMap.put("qqzfInfo", ApiUtils.getSystemPayonline(uid, token, 4, new Integer[] {1, 3}));
        //微信转账信息
        modelMap.put("wxzzInfo", ApiUtils.getSystemWeixin(uid, token));
        //支付宝转账信息
        modelMap.put("zfbzzInfo", ApiUtils.getSystemAlipay(uid, token));
        //财付通转账信息
        modelMap.put("cftzzInfo", ApiUtils.getSystemTenpay(uid, token));
        // QQ转账
        modelMap.put("qqzzList", ApiUtils.getSystemQq(uid, token));

        modelMap.put("systemPayOnlineResult", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3}));
        modelMap.put("userSession", ApiUtils.getUserSession(uid, token));
        modelMap.put("kefuUrl", ApiUtils.getKefu().getKefuUrl());
        return this.renderView("member/zhcz/zxzf", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhcz/qqzz.html", method = RequestMethod.GET)
    public ModelAndView zhcsQqzz(HttpServletRequest httpServletRequest) throws Exception{
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String,Object> modelMap = new HashMap<String,Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        //获取在线支付信息
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3}));
        //支付宝支付信息
        modelMap.put("zfbzfInfo", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3}));
        //微信支付信息
        modelMap.put("wxzfInfo", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3}));
        //QQ支付信息
        modelMap.put("qqzfInfo", ApiUtils.getSystemPayonline(uid, token, 4, new Integer[] {1, 3}));
        //微信转账信息
        modelMap.put("wxzzInfo", ApiUtils.getSystemWeixin(uid, token));
        //支付宝转账信息
        modelMap.put("zfbzzInfo", ApiUtils.getSystemAlipay(uid, token));
        //财付通转账信息
        modelMap.put("cftzzInfo", ApiUtils.getSystemTenpay(uid, token));
        // QQ转账
        modelMap.put("qqzzList", ApiUtils.getSystemQq(uid, token));

        modelMap.put("systemQqResult", ApiUtils.getSystemQq(uid, token));
        modelMap.put("userSession", ApiUtils.getUserSession(uid, token));
        modelMap.put("kefuUrl", ApiUtils.getKefu().getKefuUrl());
        return this.renderView("member/zhcz/qqzz", modelMap);
    }


    @Authentication
    @RequestMapping(value = "/zhcz/qqzf.html", method = RequestMethod.GET)
    public ModelAndView zhczQqzf(HttpServletRequest httpServletRequest) throws Exception{
        Long uid =this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap =new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        //获取在线支付信息
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3}));
        //支付宝支付信息
        modelMap.put("zfbzfInfo", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3}));
        //微信支付信息
        modelMap.put("wxzfInfo", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3}));
        //QQ支付信息
        modelMap.put("qqzfInfo", ApiUtils.getSystemPayonline(uid, token, 4, new Integer[] {1, 3}));

        //微信转账信息
        modelMap.put("wxzzInfo", ApiUtils.getSystemWeixin(uid, token));
        //支付宝转账信息
        modelMap.put("zfbzzInfo", ApiUtils.getSystemAlipay(uid, token));
        //财付通转账信息
        modelMap.put("cftzzInfo", ApiUtils.getSystemTenpay(uid, token));
        // QQ转账
        modelMap.put("qqzzList", ApiUtils.getSystemQq(uid, token));

        modelMap.put("systemPayOnlineResult", ApiUtils.getSystemPayonline(uid, token, 4, new Integer[] {2, 3}));
        modelMap.put("userSession", ApiUtils.getUserSession(uid, token));
        modelMap.put("kefuUrl", ApiUtils.getKefu().getKefuUrl());
        return this.renderView("member/zhcz/qqzf", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhcz/wxzf.html", method = RequestMethod.GET)
    public ModelAndView zhczWxzf(HttpServletRequest httpServletRequest) throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        //获取在线支付信息
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3}));
        //支付宝支付信息
        modelMap.put("zfbzfInfo", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3}));
        //微信支付信息
        modelMap.put("wxzfInfo", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3}));
        //QQ支付信息
        modelMap.put("qqzfInfo", ApiUtils.getSystemPayonline(uid, token, 4, new Integer[] {1, 3}));

        //微信转账信息
        modelMap.put("wxzzInfo", ApiUtils.getSystemWeixin(uid, token));
        //支付宝转账信息
        modelMap.put("zfbzzInfo", ApiUtils.getSystemAlipay(uid, token));
        //财付通转账信息
        modelMap.put("cftzzInfo", ApiUtils.getSystemTenpay(uid, token));
        // QQ转账
        modelMap.put("qqzzList", ApiUtils.getSystemQq(uid, token));

        modelMap.put("systemPayOnlineResult", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3}));
        modelMap.put("userSession", ApiUtils.getUserSession(uid, token));
        modelMap.put("kefuUrl", ApiUtils.getKefu().getKefuUrl());
        return this.renderView("member/zhcz/wxzf", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhcz/zfbzf.html", method = RequestMethod.GET)
    public ModelAndView zfbzf(HttpServletRequest httpServletRequest) throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        //获取在线支付信息
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3}));
        //支付宝支付信息
        modelMap.put("zfbzfInfo", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3}));
        //微信支付信息
        modelMap.put("wxzfInfo", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3}));
        //QQ支付信息
        modelMap.put("qqzfInfo", ApiUtils.getSystemPayonline(uid, token, 4, new Integer[] {1, 3}));
        //微信转账信息
        modelMap.put("wxzzInfo", ApiUtils.getSystemWeixin(uid, token));
        //支付宝转账信息
        modelMap.put("zfbzzInfo", ApiUtils.getSystemAlipay(uid, token));
        //财付通转账信息
        modelMap.put("cftzzInfo", ApiUtils.getSystemTenpay(uid, token));
        // QQ转账
        modelMap.put("qqzzList", ApiUtils.getSystemQq(uid, token));

        modelMap.put("systemPayOnlineResult", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3}));
        modelMap.put("userSession", ApiUtils.getUserSession(uid, token));
        modelMap.put("kefuUrl", ApiUtils.getKefu().getKefuUrl());
        return this.renderView("member/zhcz/zfbzf", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhcz/wxzz.html", method = RequestMethod.GET)
    public ModelAndView zhczWxzz(HttpServletRequest httpServletRequest) throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);


        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        //获取在线支付信息
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3}));
        //支付宝支付信息
        modelMap.put("zfbzfInfo", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3}));
        //微信支付信息
        modelMap.put("wxzfInfo", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3}));
        //QQ支付信息
        modelMap.put("qqzfInfo", ApiUtils.getSystemPayonline(uid, token, 4, new Integer[] {1, 3}));
        //微信转账信息
        modelMap.put("wxzzInfo", ApiUtils.getSystemWeixin(uid, token));
        //支付宝转账信息
        modelMap.put("zfbzzInfo", ApiUtils.getSystemAlipay(uid, token));
        //财付通转账信息
        modelMap.put("cftzzInfo", ApiUtils.getSystemTenpay(uid, token));
        // QQ转账
        modelMap.put("qqzzList", ApiUtils.getSystemQq(uid, token));

        modelMap.put("systemWeiXinResult", ApiUtils.getSystemWeixin(uid, token));
        return this.renderView("member/zhcz/wxzz", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhcz/zfbzz.html", method = RequestMethod.GET)
    public ModelAndView zhczZfbzz(HttpServletRequest httpServletRequest) throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);


        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        //获取在线支付信息
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3}));
        //支付宝支付信息
        modelMap.put("zfbzfInfo", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3}));
        //微信支付信息
        modelMap.put("wxzfInfo", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3}));
        //QQ支付信息
        modelMap.put("qqzfInfo", ApiUtils.getSystemPayonline(uid, token, 4, new Integer[] {1, 3}));
        //微信转账信息
        modelMap.put("wxzzInfo", ApiUtils.getSystemWeixin(uid, token));
        //支付宝转账信息
        modelMap.put("zfbzzInfo", ApiUtils.getSystemAlipay(uid, token));
        //财付通转账信息
        modelMap.put("cftzzInfo", ApiUtils.getSystemTenpay(uid, token));
        // QQ转账
        modelMap.put("qqzzList", ApiUtils.getSystemQq(uid, token));

        modelMap.put("systemAlipayResult", ApiUtils.getSystemAlipay(uid, token));
        return this.renderView("member/zhcz/zfbzz", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhcz/cftzz.html", method = RequestMethod.GET)
    public ModelAndView zhczCftzz(HttpServletRequest httpServletRequest) throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        //获取在线支付信息
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3}));
        //支付宝支付信息
        modelMap.put("zfbzfInfo", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3}));
        //微信支付信息
        modelMap.put("wxzfInfo", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3}));
        //QQ支付信息
        modelMap.put("qqzfInfo", ApiUtils.getSystemPayonline(uid, token, 4, new Integer[] {1, 3}));
        //微信转账信息
        modelMap.put("wxzzInfo", ApiUtils.getSystemWeixin(uid, token));
        //支付宝转账信息
        modelMap.put("zfbzzInfo", ApiUtils.getSystemAlipay(uid, token));
        //财付通转账信息
        modelMap.put("cftzzInfo", ApiUtils.getSystemTenpay(uid, token));
        // QQ转账
        modelMap.put("qqzzList", ApiUtils.getSystemQq(uid, token));

        modelMap.put("systemTenpayResult", ApiUtils.getSystemTenpay(uid, token));
        return this.renderView("member/zhcz/cftzz", modelMap);
    }

    /**
     * 银行转账
     *
     * @return
     */
    @RequestMapping(value = "/submitYhzz.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxSubmitYhzz(Double money, Integer depositChannelId, String bankAccount, Long bankCardId, String userBankName) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        CommonResult result = new CommonResult();
        try {

            if (money == null) {
                result.setResult(-1);
                result.setDescription("请输入金额！");
                return this.renderJson(result);
            }
            if (null == depositChannelId) {
                result.setResult(-2);
                result.setDescription("存款渠道编码不能为空！");
                return this.renderJson(result);
            }
            if (StringUtils.isBlank(bankAccount)) {
                result.setResult(-4);
                result.setDescription("银行账号不能为空！");
                return this.renderJson(result);
            }
            if (null == bankCardId) {
                result.setResult(-5);
                result.setDescription("存款银行卡编码不能为空！");
                return this.renderJson(result);
            }
            if (StringUtils.isBlank(userBankName)) {
                result.setResult(-5);
                result.setDescription("转出银行不能为空！");
                return this.renderJson(result);
            }
            result = ApiUtils.submitYhzz(uid, token, money, depositChannelId, bankAccount, bankCardId, userBankName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }
        return this.renderJson(result);
    }


    /**
     * 快速提款页面
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/withdraw.html", method = RequestMethod.GET)
    public ModelAndView withdrawLocation(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanWithdraw()) {
            return this.renderView("member/noaccess", modelMap);
        }

        modelMap.put("userSession", ApiUtils.getUserSession(uid, token));
        modelMap.put("userBankCardResult", ApiUtils.getUserBankCardList(uid, token));

        return this.renderView("member/withdraw", modelMap);
    }


    /**
     * 站内信件
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/letter.html", method = RequestMethod.GET)
    public ModelAndView letterLocation(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/letter", modelMap);
    }

    /**
     * ajax获取站内信件数据
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxGetLetter.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String letterLocation(Boolean hasRead, Date startTime, Date endTime, Integer pageIndex, Integer pageSize) throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        return this.renderJson(ApiUtils.getUserInboxList(uid, token, startTime, endTime, hasRead, pageIndex, pageSize));
    }


    /**
     * 微信转账
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/submitWeixinzz.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxSubmitWeixinzz(Double money, String userWeixinName, Integer weixinId, Date time) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        CommonResult result = new CommonResult();

        if (money == null) {
            result.setResult(-1);
            result.setDescription("请输入金额！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(userWeixinName)) {
            result.setResult(-2);
            result.setDescription("用户微信昵称不能为空！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(String.valueOf(weixinId))) {
            result.setResult(-3);
            result.setDescription("微信编码不能为空！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(String.valueOf(time))) {
            result.setResult(-4);
            result.setDescription("取款时间不能为空！");
            return this.renderJson(result);
        }

        result = ApiUtils.submitWeixinzz(uid, token, money, userWeixinName, weixinId, time);
        return this.renderJson(result);
    }

    /**
     * QQ转账
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxSubmitQqzz.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxSubmitQqzz(Double money, String userQqName, Integer qqId, Date time) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        CommonResult result = new CommonResult();

        if (null == money) {
            result.setResult(-1);
            result.setDescription("请输入金额！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(userQqName)) {
            result.setResult(-2);
            result.setDescription("用户QQ昵称不能为空！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(String.valueOf(qqId))) {
            result.setResult(-3);
            result.setDescription("QQ编码不能为空！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(String.valueOf(time))) {
            result.setResult(-4);
            result.setDescription("取款时间不能为空！");
            return this.renderJson(result);
        }

        result = ApiUtils.submitQqzz(uid, token, money, userQqName, qqId, time);
        return this.renderJson(result);
    }

    /**
     * 支付宝转账`
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/submitAlipayzz.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxAlipayzz(Double money, String userAlipayName, Integer alipayId, Date time) {
        Long uid = this.getUid(httpServletRequest);

        String token = this.getToken(httpServletRequest);

        CommonResult result = new CommonResult();

        if (money == null) {
            result.setResult(-1);
            result.setDescription("请输入金额！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(userAlipayName)) {
            result.setResult(-2);
            result.setDescription("用户支付宝昵称不能为空！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(String.valueOf(alipayId))) {
            result.setResult(-3);
            result.setDescription("支付宝编码不能为空！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(String.valueOf(time))) {
            result.setResult(-4);
            result.setDescription("取款时间不能为空！");
            return this.renderJson(result);
        }

        result = ApiUtils.submitAlipayzz(uid, token, money, userAlipayName, alipayId, time);
        return this.renderJson(result);
    }


    /**
     * 财付通转账
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/submitTenpayzz.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxTenpayzz(Double money, String userTenpayName, Integer tenpayId, Date time) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        CommonResult result = new CommonResult();

        if (money == null) {
            result.setResult(-1);
            result.setDescription("请输入金额");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(userTenpayName)) {
            result.setResult(-2);
            result.setDescription("用户财付通昵称不能为空！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(String.valueOf(tenpayId))) {
            result.setResult(-3);
            result.setDescription("财付通编码不能为空！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(String.valueOf(time))) {
            result.setResult(-4);
            result.setDescription("取款时间不能为空！");
            return this.renderJson(result);
        }

        result = ApiUtils.submitTenpayzz(uid, token, money, userTenpayName, tenpayId, time);
        return this.renderJson(result);
    }


    /**
     * 快速提款功能
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/submitWithdraw.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxWithdraw(Double money, Long id, String drawPassword) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        CommonResult result = ApiUtils.submitWithdraw(uid, token, money, id, drawPassword);
        return this.renderJson(result);
    }

    /* 市场活动
    * @return
            */
    @RequestMapping(value = "/market.html", method = {RequestMethod.GET})
    public ModelAndView marketLocation(HttpServletRequest Request) throws Exception {
        String locationUrl = "member/market";
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String flag = Request.getParameter("page") != null ? Request.getParameter("page") : "default";
        if (!"default".equals(flag)) {
            locationUrl = locationUrl + "2";
        }

        return this.renderView(locationUrl, modelMap);
    }

    /**
     * 历史记录
     */
    @RequestMapping(value = "/record.html", method = RequestMethod.GET)
    public ModelAndView recordketLocation(HttpServletRequest httpServletRequest) throws Exception {
        String location_flag = "member/record";
        String location_str = location_flag + "2";
        Map<String, Object> modelMap = new HashMap<String, Object>();

        String location_num = httpServletRequest.getParameter("page") != null ? httpServletRequest.getParameter("page") : "default";

        if (!"default".equals(location_num)) {
            if ("location1".equals(location_num)) {
                location_str = location_flag;
            } else if ("location2".equals(location_num)) {
                location_str = location_flag + "2";
            } else if ("location3".equals(location_num)) {
                location_str = location_flag + "3";
            } else if ("location4".equals(location_num)) {
                location_str = location_flag + "4";
            } else if ("location5".equals(location_num)) {
                location_str = location_flag + "5";
            }
        }

        return this.renderView(location_str, modelMap);
    }

    /**
     * 账户设置
     */
    @RequestMapping(value = "/setting.html", method = RequestMethod.GET)
    public ModelAndView settingketLocation(HttpServletRequest httpServletRequest) throws Exception {

        String location_flag = "member/setting";
        String location_str = location_flag + "2";
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String location_num = httpServletRequest.getParameter("page") != null ? httpServletRequest.getParameter("page") : "default";

        if (!"default".equals(location_num)) {
            if ("location1".equals(location_num)) {
                location_str = location_flag;
            } else if ("location2".equals(location_num)) {
                location_str = location_flag + "2";
            } else if ("location3".equals(location_num)) {
                location_str = location_flag + "3";
            } else if ("location4".equals(location_num)) {
                location_str = location_flag + "4";
            } else if ("location5".equals(location_num)) {
                location_str = location_flag + "5";
            }
        }
        return this.renderView(location_str, modelMap);
    }


    /**
     * 账户设置
     */
    @Authentication
    @RequestMapping(value = "/zhsz.html", method = RequestMethod.GET)
    public ModelAndView zhsz(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/zhsz", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhsz/grzl.html", method = RequestMethod.GET)
    public ModelAndView zhszGrzl(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanEditInfo()) {
            return this.renderView("member/noaccess", modelMap);
        }

        modelMap.put("userSession", ApiUtils.getUserSession(uid, token));
        return this.renderView("member/zhsz/grzl", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhsz/dlmm.html", method = RequestMethod.GET)
    public ModelAndView zhszDlmm(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanEditPassword()) {
            return this.renderView("member/noaccess", modelMap);
        }

        return this.renderView("member/zhsz/dlmm", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhsz/tkmm.html", method = RequestMethod.GET)
    public ModelAndView zhszTkmm(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/zhsz/tkmm", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhsz/yhkgl.html", method = RequestMethod.GET)
    public ModelAndView zhszYhkgl(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanEditUserBank()) {
            return this.renderView("member/noaccess", modelMap);
        }

        modelMap.put("userBankCardResult", ApiUtils.getUserBankCardList(uid, token));
        return this.renderView("member/zhsz/yhkgl", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhsz/aqxx.html", method = RequestMethod.GET)
    public ModelAndView zhszAqxx(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanSafeinfo()) {
            return this.renderView("member/noaccess", modelMap);
        }

        modelMap.put("safeInfo", ApiUtils.getSafeInfo(uid, token));
        return this.renderView("member/zhsz/aqxx", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhsz/ajaxEditUserInfo.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxEditUserInfo(String nickname, Date birthday, String qq, String telephone, String email, Integer sex) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        CommonResult result = ApiUtils.editUserInfo(uid, token, nickname, birthday, qq, telephone, email, sex);
        return this.renderJson(result);
    }

    @Authentication
    @RequestMapping(value = "/zhsz/ajaxResetPassword.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxResetPassword(String oldPassword, String newPassword) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        CommonResult result = ApiUtils.resetPassword(uid, token, oldPassword, newPassword);
        return this.renderJson(result);
    }

    @Authentication
    @RequestMapping(value = "/zhsz/ajaxResetDrawPassword.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxResetDrawPassword(String oldPassword, String newPassword) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        CommonResult result = ApiUtils.resetDrawPassword(uid, token, oldPassword, newPassword);
        return this.renderJson(result);
    }


    @Authentication
    @RequestMapping(value = "/lsjl.html", method = RequestMethod.GET)
    public ModelAndView lsjl(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/lsjl", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/lsjl/ckjl.html", method = RequestMethod.GET)
    public ModelAndView lsjlCkjl(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("depositChannelResult", ApiUtils.getDepositChannel());
        return this.renderView("member/lsjl/ckjl", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/lsjl/tzjl.html", method = RequestMethod.GET)
    public ModelAndView lsjlTzjl(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        SscPlayGroupListResult sscplaylist = ApiUtils.getSscPlayGroupList();
        modelMap.put("sscplaylist", sscplaylist);
        return this.renderView("member/lsjl/tzjl", modelMap);
    }

    @RequestMapping(value = "/getSscPlayGroup.json")
    @ResponseBody
    public String getPlayGroup() {
        return this.renderJson(ApiUtils.getSscPlayGroupList());
    }

    @Authentication
    @RequestMapping(value = "/lsjl/tkjl.html", method = RequestMethod.GET)
    public ModelAndView lsjlTkjl(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/lsjl/tkjl", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/lsjl/zjjl.html", method = RequestMethod.GET)
    public ModelAndView lsjlZzjl(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/lsjl/zjjl", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/lsjl/yhjl.html", method = RequestMethod.GET)
    public ModelAndView lsjlYhjl(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/lsjl/yhjl", modelMap);
    }

    /**
     * ajax获取存款记录数据
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxGetCkjl.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxGetCkjl(Boolean hasRead, Date startTime, Date endTime, Integer pageIndex, Integer pageSize, Integer status, Integer type) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        return this.renderJson(ApiUtils.getDepositList(uid, token, startTime, endTime, pageIndex, pageSize, status, type));
    }

    /**
     * ajax获取提款记录数据
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxGetTkjl.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxGetTkjl(Boolean hasRead, Date startTime, Date endTime, Integer pageIndex, Integer pageSize, Integer status, Integer type) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        return this.renderJson(ApiUtils.getWithdrawList(uid, token, startTime, endTime, pageIndex, pageSize, status, type));
    }

    /**
     * ajax获取投注记录数据
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxGetTzjl.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscBetsListResult ajaxGetTzjl(Date startTime, Date endTime, Integer pageIndex, Integer pageSize, Long playGroupId, Long playId, Integer status, Boolean isZhongjiang) {
        Long uid = Long.parseLong((String) httpServletRequest.getAttribute("uid"));
        String token = (String) httpServletRequest.getAttribute("token");
        return ApiUtils.getSscBetsList(uid, token, startTime, endTime, pageIndex, pageSize, playGroupId, playId, status, isZhongjiang);
    }

    /**
     * ajax阅读站内信
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxReadZnx.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxReadZnx(@RequestParam("ids[]") Long[] idList) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        return this.renderJson(ApiUtils.readUserInboxNotice(uid, token, idList));
    }

    /**
     * ajax删除站内信
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxDelZnx.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxDelZnx(@RequestParam("ids[]") Long[] idList) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        return this.renderJson(ApiUtils.delUserInboxNotice(uid, token, idList));
    }

    /**
     * ajax添加银行卡
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxAddUserBank.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxAddUserBank(String bankName, String subBankName, String bankAccount) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        return this.renderJson(ApiUtils.addUserBank(uid, token, bankName, subBankName, bankAccount));
    }

    /**
     * ajax添加银行卡
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxDelUserBank.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxDelUserBank(Long id) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        return this.renderJson(ApiUtils.delUserBank(uid, token, id));
    }

    @Authentication
    @RequestMapping(value = "/ajaxSetDefault.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public CommonResult ajaxSetDefault(Long id) {
        CommonResult result = new CommonResult();
        try {
            Long uid = this.getUid(httpServletRequest);
            String token = this.getToken(httpServletRequest);

            return ApiUtils.setUserBankDefault(uid, token, id);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }

        return result;
    }

    @Authentication
    @RequestMapping(value = "/schd.html", method = RequestMethod.GET)
    public ModelAndView schd(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/schd", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/schd/yhqb.html", method = RequestMethod.GET)
    public ModelAndView schdYhqb(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/schd/yhqb", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/schd/tjfl.html", method = RequestMethod.GET)
    public ModelAndView schdTjfl(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/schd/tjfl", modelMap);
    }

    @RequestMapping(value = "/ajaxGetServerTime.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String getServerTime() {
        return this.renderJson(ApiUtils.getServerTime());
    }

    @RequestMapping(value = "/checkOnline.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public CommonResult checkOnline() {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        return ApiUtils.checkOnline(uid, token);
    }

    @Authentication
    @RequestMapping(value = "/updateUserInfo.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String updateUserInfo(HttpServletRequest httpServletRequest) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        ApiUtils.updateUserInfo(uid, token);
        return this.renderJson(ApiUtils.getUserSession(uid, token));
    }

    @Authentication
    @RequestMapping(value = "/getUserSession.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String getUserSession(HttpServletRequest httpServletRequest) throws Exception {
        return updateUserInfo(httpServletRequest);
    }

    @Authentication
    @RequestMapping(value = "/ajaxSigout.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxSigout(HttpServletRequest httpServletRequest) throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        return this.renderJson(ApiUtils.sigout(uid, token));
    }


    /**
     * ajax获取弹窗公告
     *
     * @return
     */
    @RequestMapping(value = "/ajaxGetWebPopUpNotice.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public WebNoticeResult ajaxGetWebPopUpNotice() throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        return ApiUtils.getPopupNoticeList(uid, token,null, null);
    }

    @Authentication
    @RequestMapping(value = "/jfmx/yjjl.html", method = RequestMethod.GET)
    public ModelAndView jfmxYjjl(HttpServletRequest httpServletRequest) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }

        return this.renderView("member/jfmx/yjjl", modelMap);
    }

    /**
     * ajax获取弹窗公告
     *
     * @return
     */
    @RequestMapping(value = "/ajaxGetLogUserCoinList.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public LogUserCoinResult ajaxGetLogUserCoinList(Integer pageIndex, Integer pageSize, Date startTime, Date endTime, Integer type) throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        return ApiUtils.getLogUserCoinList(uid, token,pageIndex, pageSize, startTime, endTime, type);
    }
}