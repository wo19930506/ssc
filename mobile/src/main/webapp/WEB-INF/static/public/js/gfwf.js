//****
// 官方玩法事件绑定
function gfwfEvent(){
    $("#btn-submit-gfwf").click(function () {
        showBetTemplate();
    });

}


//获取具体子页面
function getSubGfwfSscPage(url, callback) {
    ajaxRequest({
        url: url,
        dataType: "html",
        type: "GET",
        beforeSend: function () {
            Tools.showLoading("加载中...");
        },
        success: function (html) {
            $("#betContainer_gfwf").html(html);
            if (typeof callback == 'function') {
                callback();
            }
        },
        error: function (a, b, c) {
            if (b == 'timeout') {
                Tools.toast("操作超时，请稍后重试");
                return;
            }

            Tools.toast("请求错误，请稍后重试");
        },
        complete: function () {
            Tools.hideLoading();
        }
    });
}

//数字单选算法
function danSelect(obj) {
    if ($(obj).parent().find(".wan_bottom .cus-flex-item .xz").hasClass("active_gfwf")) {
        $(obj).parent().find(".cus-flex-item .xz").removeClass("active_gfwf");
    } else {
        $(obj).parent().find(".cus-flex-item .xz").addClass("active_gfwf");
    }
    $(obj).parent().parent().parent().find(".xz i").removeClass("active_gfwf");

    getGfwfZhushu();

}


//获取注数方法
function getGfwfZhushu(){
    //执行注数方法
    if (typeof playName != 'undefined') {
        var zhushuFun = playName;
        var zhushu = eval(zhushuFun + "()");   // 注数
        if (typeof zhushu == "undefined" || zhushu < 0) {
            return;
        }
        $("#zhushu").html(zhushu);
    }
}

//*************************定位胆****************************

/**
 * 注数-定位胆
 */
function zhushu_dwd(){
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [], newArr = [];
    $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
    });

    var wanLength = wanArr.length;
    var qianLength = qianArr.length;
    var baiLength = baiArr.length;
    var shiLength = shiArr.length;
    var geLength = geArr.length;

    if (wanLength <= 0 && qianLength <= 0 && baiLength <= 0 && shiLength <= 0 && geLength <= 0) {
        return 0;
    }

    if (wanLength > 0) {
        newArr = newArr.concat(wanArr);
    }
    if (qianLength > 0) {
        newArr = newArr.concat(qianArr);
    }
    if (baiLength > 0) {
        newArr = newArr.concat(baiArr);
    }
    if (shiLength > 0) {
        newArr = newArr.concat(shiArr);
    }
    if (geLength > 0) {
        newArr = newArr.concat(geArr);
    }
    return newArr.length;
}
//*************************五星直选****************************
/**
 * 注数-5星直选复式
 */
function zhushu_5xzxfs() {
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".wanweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        wanArr.push($.trim($(this).html()));
    });
    $.each($(".qianweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        qianArr.push($.trim($(this).html()));
    });
    $.each($(".baiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        geArr.push($.trim($(this).html()));
    });

    var wanLength = wanArr.length;
    var qianLength = qianArr.length;
    var baiLength = baiArr.length;
    var shiLength = shiArr.length;
    var geLength = geArr.length;

    if (wanLength <= 0 || qianLength <= 0 || baiLength <= 0 || shiLength <= 0 || geLength <= 0) {
        return 0;
    }

    var newArr = getNewArrs(wanArr, qianArr, baiArr, shiArr, geArr);
    return newArr.length;
}
/**********后三**********/

/**
 * 注数-特殊号
 */
function zhushu_h3tsh() {
    var tsArr = [];
    $.each($(".cl-1015-tsh ul li.tsh_li[data-name = '特殊号'] span.acti_tsh"), function (index, value) {
        tsArr.push($.trim($(this).html()));
    });
    var zlLength = tsArr.length;
    if (zlLength <= 0) {
        return 0;
    }
    return tsArr.length;
}

/**
 * 注数-和值尾数
 */
function zhushu_h3hzws() {
    var wsArr = [], newArr = [];
    $.each($(".cl-1014-hzws ul li[data-name = '和值尾数'] span.acti"), function (index, value) {
        wsArr.push($.trim($(this).find("i").html()));
    });
    var zlLength = wsArr.length;
    if (zlLength < 0) {
        return 0;
    }
    return zlLength;
}

/**
 * 注数-组选包胆
 */
function zhushu_h3zxbd(){
    var baoDanArr = [], newArr = [];
    $.each($(".cl-1013-zxbd ul li[data-name = '包胆'] span.acti"), function (index, value) {
        baoDanArr.push($.trim($(this).find("i").html()));
    });
    var zlLength = baoDanArr.length;
    if (zlLength < 0) {
        return 0;
    }
    newArr = getZxbdNewArrs(baoDanArr);
    return newArr.length;
}

/**
 * 注数-组选和值
 */
function zhushu_h3zuxhz(){
    var fuShiArr = [], newArr = [];
    $.each($(".cl-1012-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        fuShiArr.push($.trim($(this).find("i").html()));
    });
    var zlLength = fuShiArr.length;
    if (zlLength <= 0) {
        return 0;
    }
    newArr = getZxhzNewArrs(fuShiArr);
    return newArr.length;
}
/**
 * 注数-组六复式
 */
function zhushu_h3z6fs(){
    var fuShiArr = [], newArr = [];
    $.each($(".cl-1009-zlfs ul li[data-name = '组六'] span.acti"), function (index, value) {
        fuShiArr.push($.trim($(this).find("i").html()));
    });
    var zlLength = fuShiArr.length;
    if (zlLength < 3) {
        return 0;
    }
    newArr = getZuLiuNewArrs(fuShiArr);
    return newArr.length;
}

/**
 * 注数-组三复式
 */
function zhushu_h3z3fs(){
    var fuShiArr = [], newArr = [];
    $.each($(".cl-1007-zsfs ul li[data-name = '组三'] span.acti"), function (index, value) {
        fuShiArr.push($.trim($(this).find("i").html()));
    });

    var heZhiLength = fuShiArr.length;
    if (heZhiLength <= 1) {
        return 0;
    }
    newArr = getZuXuanNewArrs(fuShiArr);
    return newArr.length;
}

/**
 * 注数-后3组合
 */
function zhushu_h3zh() {
    var baiArr = [], shiArr = [], geArr = [];
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
    });

    var baiLength = baiArr.length;
    var shiLength = shiArr.length;
    var geLength = geArr.length;

    if (baiLength <= 0 || shiLength <= 0 || geLength <= 0) {
        return;
    }

    var newArr = getHszhNewArrs(baiArr, shiArr, geArr);
    return newArr.length;
}
/**
 * 注数-直选跨度
 */
function zhushu_h3zxkd() {
    var newArr = [];
    var kaDuArr = [];
    $.each($(".cl-1006-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
        kaDuArr.push($.trim($(this).find("i").html()));
    });
    if (kaDuArr.length <= 0) {
        return 0;
    }
    newArr = getKaduNewArrs(kaDuArr);
    return newArr.length;
}
/**
 * 注数-直选和值
 */
function zhushu_h3zxhz() {
    var heZhiArr = [], newArr = [];
    $.each($(".cl-1005-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        heZhiArr.push($.trim($(this).find("i").html()));
    });

    var heZhiLength = heZhiArr.length;
    if (heZhiLength <= 0) {
        return 0;
    }

    newArr = getHezNewArrs(heZhiArr);
    return newArr.length;
}

/**
 * 注数-后3直选复式
 */
function zhushu_h3zxfs() {
    var newArr = [];
    var baiArr = [], shiArr = [], geArr = [];
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
    });

    var baiLength = baiArr.length;
    var shiLength = shiArr.length;
    var geLength = geArr.length;
    if (baiLength <= 0 || shiLength <= 0 || geLength <= 0) {
        return 0;
    }
    newArr = getThreeNewArrs(baiArr, shiArr, geArr);
    return newArr.length;
}


//*************************四星直选****************************
/**
 * 注数-4星直选复式
 */
function zhushu_4xzxfs() {
    var qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
    });

    var qianLength = qianArr.length;
    var baiLength = baiArr.length;
    var shiLength = shiArr.length;
    var geLength = geArr.length;

    if (qianLength <= 0 || baiLength <= 0 || shiLength <= 0 || geLength <= 0) {
        return 0;
    }

    var newArr = getFourNewArrs(qianArr, baiArr, shiArr, geArr);
    if (typeof newArr == "undefined" || newArr.length <= 0) {
        if (typeof clearStateTouZhu == 'function') {
            clearStateTouZhu();
        }
        return;
    }
    return newArr.length;
}




//******************常用方法****************

// 数字批量选择算法
function selectFun_1(obj) {
    $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item .xz").removeClass("active_gfwf");  //初始化选择的特效，清零
    $(obj).parent().find(".xz i").removeClass("active_gfwf");                                     //始化选择的特效，清零
    $(obj).addClass("active_gfwf");
    $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item .xz").addClass("active_gfwf");
    getGfwfZhushu();
}

function selectFun_2(obj) {
    $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item .xz").removeClass("active_gfwf");
    $(obj).parent().find(".xz i").removeClass("active_gfwf");
    $(obj).addClass("active_gfwf");
    var Aarr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var Barr = [, , , , , 5, 6, 7, 8, 9];
    for (var i = 0; i <= Aarr.length; ++i) {
        if (Aarr[i] == Barr[i]) {
            $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item").find(".n" + i).addClass("active_gfwf");
        }
    }
    getGfwfZhushu();
}

function selectFun_3(obj) {
    $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item .xz").removeClass("active_gfwf");
    $(obj).parent().find(".xz i").removeClass("active_gfwf");
    $(obj).addClass("active_gfwf");
    var Aarr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var Barr = [0, 1, 2, 3, 4, , , , ,];
    for (var i = 0; i <= Aarr.length; ++i) {
        if (Aarr[i] == Barr[i]) {
            $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item").find(".n" + i).addClass("active_gfwf");
        }
    }
    getGfwfZhushu();
}

function selectFun_4(obj) {
    $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item .xz").removeClass("active_gfwf");
    $(obj).parent().find(".xz i").removeClass("active_gfwf");
    $(obj).addClass("active_gfwf");
    for (var i = 0; i < 10; i++) {
        if (i%2 != 0) {   //奇数
            $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item").find(".n" + i).addClass("active_gfwf");
        }
    }
    getGfwfZhushu();
}

function selectFun_5(obj) {
    $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item .xz").removeClass("active_gfwf");
    $(obj).parent().find(".xz i").removeClass("active_gfwf");
    $(obj).addClass("active_gfwf");
    for (var i = 0; i < 10; ++i) {
        if (i%2 == 0) {   //偶数
            $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item").find(".n" + i).addClass("active_gfwf");
        }
    }
    getGfwfZhushu();
}

function selectFun_6(obj) {
    $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item .xz").removeClass("active_gfwf");
    $(obj).parent().find(".xz i").removeClass("active_gfwf");
    $(obj).addClass("active_gfwf");
    getGfwfZhushu();
}


$(function () {    //彩种玩法选中后，隐藏正在显示的 直线方式 的模块
        $(".gfwf_xz .staer a").click(
            function () {
                $(".page").find(".gfwf_xz").addClass("gfwf_wh");    //隐藏
                $(".page").find(".gfwf_mask2").addClass("Hide_Show2");
                $(".page").find(".x_wrap").removeClass("Fixed");
                $(".page").find(".gfwf_xz").removeClass("Fixed");
                $(".page").find(".gfwf_mask2").removeClass("Fixed");
            }
        );
    }
);

//清除注单内容提示框
var layerBet = null;
function showBetTemplate(infoStr) {
    if (layerBet != null) {
        return;
    }

    var bet_template = '\
    <div class="betTemplate">\
        <div class="betHead">\
          <span>注单设定</span>\
        </div>\
        <div class="betContent">\
           <div class="slidebg">\
               <div class="slide-top">\
                  <span class="ft"><label>赔率：</label><label id="amount" class="fandian"></label></span>\
                  <span class="fr"><label>返利：</label><label class="fanli"></label></span>\
               </div>\
               <div aria-disabled="false" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" id="slider-range-min">\
                  <div class="ui-slider-range ui-widget-header ui-corner-all ui-slider-range-min"></div>\
                  <a id="slide_a" href="javascript:;" class="ui-slider-handle ui-state-default ui-corner-all" style="left: 0%;"></a>\
               </div>\
           </div>\
        </div>\
        <div class="betFoot">\
           <a href="javascript:void(0)" class="yes-btn"><span>确认</span></a>\
           <a href="javascript:void(0)" class="no-btn"><span>取消</span></a>\
        </div>\
    </div>\
    ';

    layer.closeAll();
    //页面层
    layerBet = layer.open({
        type: 1,
        title: false,
        closeBtn: 0,
        content: bet_template
    });

    //定义弹框宽度大小
    $("#layui-m-layer" + layerBet + " .layui-m-layerchild").css("width", "85%");
    $(".betTemplate").parent().css("padding", "0 0!important");

    // $("#slider-range-min").slider({
    //     range: "min",
    //     value: 13,
    //     min: 0,
    //     max: 100,
    //
    //     slide: function (event, ui) {
    //         $("#amount").html("" + ui.value);
    //     }
    // });
    // $("#amount").html("$" + $("#slider-range-min").slider("value"));

}




//*****************mobile注数算法******************

// 获取万、千、百、十、个，固定位数的个数所组成5位所有组合
function getNewArrs(wanA, qianA, baiA, shiA, geA) {
    var wArr = [], qArr = [], bArr = [], sArr = [], gArr = [];
    wArr = wanA;
    qArr = qianA;
    bArr = baiA;
    sArr = shiA;
    gArr = geA;
    var tempArr = [];
    for (var w = 0; w < wArr.length; w++) {
        for (var q = 0; q < qArr.length; q++) {
            for (var b = 0; b < bArr.length; b++) {
                for (var s = 0; s < sArr.length; s++) {
                    for (var g = 0; g < gArr.length; g++) {
                        tempArr.push(wArr[w] + "" + qArr[q] + "" + bArr[b] + "" + sArr[s] + "" + gArr[g]);
                    }
                }
            }
        }
    }
    return tempArr;
}