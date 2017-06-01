<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="group">
    <ul>
        <li>
            <b>任二直选</b>
            <p class="btn_fu_zhi">
                <span class="acti" data-name="zxfs"><a href="javascript:void(0)">直选复式</a></span>
                <span data-name="zxds"><a href="javascript:void(0)">直选单式</a></span>
                <span data-name="zxhz"><a href="javascript:void(0)">直选和值</a></span>
            </p>
        </li>
        <li>
            <b>任二组选</b>
            <p class="btn_fu_zhi">
                <span data-name="zuxfs"><a href="javascript:void(0)">组选复式</a></span>
                <span data-name="zuxds"><a href="javascript:void(0)">组选单式</a></span>
                <span data-name="zuxhz"><a href="javascript:void(0)">组选和值</a></span>
            </p>
        </li>
    </ul>
</div>
<div class="Pick cl-1002 recl-1002" data-flag="rx2-zxfs">
    <p class="p1">
        <span class="fr fl cl-1001">
           从万位、千位、百位、十位、个位中至少两位上各选1个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：万位5，百位8 开奖号码：51812，即中任二直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置，至少各选1个号码组成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="万">
            <b><i>万位</i></b>
            <span><i>0</i></span>
            <span><i>1</i></span>
            <span><i>2</i></span>
            <span><i>3</i></span>
            <span><i>4</i></span>
            <span><i>5</i></span>
            <span><i>6</i></span>
            <span><i>7</i></span>
            <span><i>8</i></span>
            <span><i>9</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="千">
            <b><i>千位</i></b>
            <span><i>0</i></span>
            <span><i>1</i></span>
            <span><i>2</i></span>
            <span><i>3</i></span>
            <span><i>4</i></span>
            <span><i>5</i></span>
            <span><i>6</i></span>
            <span><i>7</i></span>
            <span><i>8</i></span>
            <span><i>9</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="百">
            <b><i>百位</i></b>
            <span><i>0</i></span>
            <span><i>1</i></span>
            <span><i>2</i></span>
            <span><i>3</i></span>
            <span><i>4</i></span>
            <span><i>5</i></span>
            <span><i>6</i></span>
            <span><i>7</i></span>
            <span><i>8</i></span>
            <span><i>9</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="十">
            <b><i>十位</i></b>
            <span><i>0</i></span>
            <span><i>1</i></span>
            <span><i>2</i></span>
            <span><i>3</i></span>
            <span><i>4</i></span>
            <span><i>5</i></span>
            <span><i>6</i></span>
            <span><i>7</i></span>
            <span><i>8</i></span>
            <span><i>9</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="个">
            <b><i>个位</i></b>
            <span><i>0</i></span>
            <span><i>1</i></span>
            <span><i>2</i></span>
            <span><i>3</i></span>
            <span><i>4</i></span>
            <span><i>5</i></span>
            <span><i>6</i></span>
            <span><i>7</i></span>
            <span><i>8</i></span>
            <span><i>9</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>

<%--直选单式--%>
<div class="Pick cl-1003 recl-1003-zxds">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择两个位置,至少手动输入一个两位数的号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百位，输入号码58 开奖号码：51812，即中任二直选(单式)。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置,至少手动输入一个两位数的号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</var>
            </a>

        </span>
    </p>
    <div class="selposition re-select-ds">
        <label for="position_ds_0"><input type="checkbox" class="selpositioninput" name="position_ds_0" id="position_ds_0" value="1"/>万位</label>
        <label for="position_ds_1"><input type="checkbox" class="selpositioninput" name="position_ds_1" id="position_ds_1" value="2"/>千位</label>
        <label for="position_ds_2"><input type="checkbox" class="selpositioninput" name="position_ds_2" id="position_ds_2" value="3"/>百位</label>
        <label for="position_ds_3"><input type="checkbox" class="selpositioninput" name="position_ds_3" id="position_ds_3" value="4"/>十位</label>
        <label for="position_ds_4"><input type="checkbox" class="selpositioninput" name="position_ds_4" id="position_ds_4" value="5"/>个位</label>
        <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-ds" class="rxcount">2</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-ds" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
    </div>
    <div class="content_jiang">
        <textarea class="content_tex" autofocus></textarea>
        <div class="right con_j_end">
            <ul>
                <li onclick="delRrepet()"><a href="javascript:void(0)">删除重复号</a></li>
                <li onclick="daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                <li onclick="clearTextarea()"><a href="javascript:void(0)">清空</a></li>
            </ul>
        </div>
    </div>

    <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
</div>
<%--直选和值--%>
<div class="Pick cl-1002 recl-1004-zxhz">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择两个位置,至少选择一个和值号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百位，选择和值号码13 开奖号码：51812，即中任二直选和值。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置,至少选择一个和值号码构成一注，所选两个位置的开奖号码相加之和与所选和值一致，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="re2-1004-li">
            <div class="selposition">
                <label for="position_0"><input type="checkbox" class="selpositioninput" name="position_0" id="position_0" value="1"/>万位</label>
                <label for="position_1"><input type="checkbox" class="selpositioninput" name="position_1" id="position_1" value="2"/>千位</label>
                <label for="position_2"><input type="checkbox" class="selpositioninput" name="position_2" id="position_2" value="3"/>百位</label>
                <label for="position_3"><input type="checkbox" class="selpositioninput" name="position_3" id="position_3" value="4"/>十位</label>
                <label for="position_4"><input type="checkbox" class="selpositioninput" name="position_4" id="position_4" value="5"/>个位</label>
                <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount" class="rxcount">2</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
            </div>
        </li>
        <li data-name="和值" class="hz-q2">
            <b class="hz-dir"><i>和值</i></b>
            <span><i>0</i></span>
            <span><i>1</i></span>
            <span><i>2</i></span>
            <span><i>3</i></span>
            <span><i>4</i></span>
            <span><i>5</i></span>
            <span><i>6</i></span>
            <span><i>7</i></span>
            <span><i>8</i></span>
            <span><i>9</i></span>
            <span><i>10</i></span>
            <span><i>11</i></span>
            <span><i>12</i></span>
            <span><i>13</i></span>
            <span><i>14</i></span>
            <span><i>15</i></span>
            <span><i>16</i></span>
            <span><i>17</i></span>
            <span><i>18</i></span>
        </li>
    </ul>
</div>

<%--组选复式--%>
<div class="Pick cl-1002 recl-1005-zuxfs">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择两个位置,号码区至少选择两个号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百位，选择号码85 开奖号码：51812或者81512，即中任二组选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置,至少选择两个号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="re2-1004-li">
            <div class="selposition">
                <label for="position_zux0"><input type="checkbox" class="selpositioninput" name="position_zux0" id="position_zux0" value="1"/>万位</label>
                <label for="position_zux1"><input type="checkbox" class="selpositioninput" name="position_zux1" id="position_zux1" value="2"/>千位</label>
                <label for="position_zux2"><input type="checkbox" class="selpositioninput" name="position_zux2" id="position_zux2" value="3"/>百位</label>
                <label for="position_zux3"><input type="checkbox" class="selpositioninput" name="position_zux3" id="position_zux3" value="4"/>十位</label>
                <label for="position_zux4"><input type="checkbox" class="selpositioninput" name="position_zux4" id="position_zux4" value="5"/>个位</label>
                <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount_zux" class="rxcount">2</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo_zux" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
            </div>
        </li>
        <li data-name="组选">
            <b><i>组选</i></b>
            <span><i>0</i></span>
            <span><i>1</i></span>
            <span><i>2</i></span>
            <span><i>3</i></span>
            <span><i>4</i></span>
            <span><i>5</i></span>
            <span><i>6</i></span>
            <span><i>7</i></span>
            <span><i>8</i></span>
            <span><i>9</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>

<%--组选单式--%>
<div class="Pick cl-1003 recl-1006-zuxds">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择两个位置,至少手动输入一个两位数的号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百位，输入号码85 开奖号码：51812或者81512，即中任二组选(单式)。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置,至少手动输入一个两位数的号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</var>
            </a>

        </span>
    </p>
    <div class="selposition re-select-ds">
        <label for="position_zuds_0"><input type="checkbox" class="selpositioninput" name="position_zuds_0" id="position_zuds_0" value="1"/>万位</label>
        <label for="position_zuds_1"><input type="checkbox" class="selpositioninput" name="position_zuds_1" id="position_zuds_1" value="2"/>千位</label>
        <label for="position_zuds_2"><input type="checkbox" class="selpositioninput" name="position_zuds_2" id="position_zuds_2" value="3"/>百位</label>
        <label for="position_zuds_3"><input type="checkbox" class="selpositioninput" name="position_zuds_3" id="position_zuds_3" value="4"/>十位</label>
        <label for="position_zuds_4"><input type="checkbox" class="selpositioninput" name="position_zuds_4" id="position_zuds_4" value="5"/>个位</label>
        <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zuds" class="rxcount">2</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zuds" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
    </div>
    <div class="content_jiang">
        <textarea class="content_tex" autofocus></textarea>
        <div class="right con_j_end">
            <ul>
                <li onclick="delRrepet()"><a href="javascript:void(0)">删除重复号</a></li>
                <li onclick="daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                <li onclick="clearTextarea()"><a href="javascript:void(0)">清空</a></li>
            </ul>
        </div>
    </div>

    <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
</div>

<%--组选和值--%>
<div class="Pick cl-1002 recl-1007-zuxhz">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择两个位置,至少选择一个和值号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百位，选择和值号码13 开奖号码：51812，即中任二组选和值。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置,至少选择一个和值号码构成一注，所选两个位置的开奖号码相加之和与所选和值一致(不含对子号)，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="re2-1004-li">
            <div class="selposition">
                <label for="position_zuxhz0"><input type="checkbox" class="selpositioninput" name="position_zuxhz0" id="position_zuxhz0" value="1"/>万位</label>
                <label for="position_zuxhz1"><input type="checkbox" class="selpositioninput" name="position_zuxhz1" id="position_zuxhz1" value="2"/>千位</label>
                <label for="position_zuxhz2"><input type="checkbox" class="selpositioninput" name="position_zuxhz2" id="position_zuxhz2" value="3"/>百位</label>
                <label for="position_zuxhz3"><input type="checkbox" class="selpositioninput" name="position_zuxhz3" id="position_zuxhz3" value="4"/>十位</label>
                <label for="position_zuxhz4"><input type="checkbox" class="selpositioninput" name="position_zuxhz4" id="position_zuxhz4" value="5"/>个位</label>
                <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount_zuxhz" class="rxcount">2</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo_zuxhz" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
            </div>
        </li>
        <li data-name="和值" class="hz-q2 re-zuxhz-rx2">
            <b class="hz-dir"><i>和值</i></b>
            <span><i>1</i></span>
            <span><i>2</i></span>
            <span><i>3</i></span>
            <span><i>4</i></span>
            <span><i>5</i></span>
            <span><i>6</i></span>
            <span><i>7</i></span>
            <span><i>8</i></span>
            <span><i>9</i></span>
            <span><i>10</i></span>
            <span><i>11</i></span>
            <span><i>12</i></span>
            <span><i>13</i></span>
            <span><i>14</i></span>
            <span><i>15</i></span>
            <span><i>16</i></span>
            <span><i>17</i></span>
        </li>
    </ul>
</div>


<div class="add_spot">
    <div class="left">
        <div class="sopt_wrap">
            <div class="slide_sp">
                奖金/返点
                <%--<p><span style="width: 4.89063px;"></span><var style="left: 4.89063px;"></var></p>--%>
                <%--<i><var>934058.63</var> / 7.0%</i>--%>
                <div class="cl-1003">
                    <div class="cl-1004">
                        <input type="hidden" class="slider-input"/>
                    </div>
                </div>
                <i class="base-i base-rx2"><var class="jiangjin-change">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">1.0%</var></i>
                <i class="base-i base-rx2-zux"><var class="jiangjin-change-zux">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">1.0%</var></i>
            </div>
            <div class="reduce">
                <a class="fl">-</a>
                <input data-beishu="1" type="text" value="1" id="inputBeishu"
                       onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                       onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}">
                <a class="fr">+</a>
                <span>倍</span>
            </div>
            <div class="down">
                <input type="text" value="2元" id="inputMoney" data-money="2">
                <span></span>
                <div class="down_menu">
                    <i>2元</i>
                    <i>5元</i>
                    <i>10元</i>
                    <i>20元</i>
                </div>
            </div>
        </div>
        <p class="p1">
            您选择了 <i class="i0">0</i> 注，<i class="i1 i_beishu">0</i> 倍，返还 <i class="i1 i_fanD">0.00</i> 元，共投注 <i class="i1 i_money">0.00</i>元。
        </p>
    </div>
    <div class="rigth">
        <a href="javascript:void(0)" onclick="tjzd()"><img src="${resPath}img/ico65.png" alt="">添加注单</a>
    </div>

</div>
<script>
    $(function(){
        $(".Pick").hide();
        $(".base-i").hide();
        $('.recl-1002').show();

        $(".btn_fu_zhi span").click(function () {
           if($(this).siblings().hasClass('acti')){
               $(this).siblings().removeClass('acti');
           }

           $(this).addClass('acti');
        });

        $(".Pick ul li span i").click(function () {
            $(this).parent().toggleClass('acti');
            var flagName = $(this).parent().parent().parent().parent().attr("data-flag");
            if(flagName == "rx2-zxfs"){
                stateZxfsZhuShu();
            }


        });

        $(".group ul li p span").click(function () {
            $(".group ul li p span.acti").removeClass("acti");
            $(this).addClass('acti');

            var nameVal = $(this).data("name");
            if(nameVal == "zxfs"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1002').show();
                $('.recl-1002').attr("data-flag", "rx2-zxfs");
                $(".base-i").hide();
                $(".base-rx2").show();
            } else if(nameVal == "zxds"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1003-zxds').show();
                $('.recl-1003-zxds').attr("data-flag", "rx2-zxds");
                $(".base-i").hide();
                $(".base-rx2").show();
            } else if(nameVal == "zxhz"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1004-zxhz').show();
                $('.recl-1004-zxhz').attr("data-flag", "rx2-zxhz");
                $(".base-i").hide();
                $(".base-rx2").show();
            } else if(nameVal == "zuxfs"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1005-zuxfs').show();
                $('.recl-1005-zuxfs').attr("data-flag", "rx2-zuxfz");
                $(".base-i").hide();
                $(".base-rx2-zux").show();
            } else if(nameVal == "zuxds"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1006-zuxds').show();
                $('.recl-1006-zuxds').attr("data-flag", "rx2-zuxdz");
                $(".base-i").hide();
                $(".base-rx2-zux").show();
            } else if(nameVal == "zuxhz"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1007-zuxhz').show();
                $('.recl-1007-zuxhz').attr("data-flag", "rx2-zuxhz");
                $(".base-i").hide();
                $(".base-rx2-zux").show();
            }
        });

    });
</script>
<script>
    function stateZxfsZhuShu(){
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
            return;
        }

        var zhushu = getRx2zxfsZhushu(wanArr, qianArr, baiArr, shiArr, geArr);
        changeState(zhushu);

    }

    function getRx2zxfsZhushu(wanArr, qianArr, baiArr, shiArr, geArr){
        var arrNew = [], tempArr = [];
        if(wanArr.length > 0){
           arrNew.push(wanArr);
        }
        if(qianArr.length > 0){
           arrNew.push(qianArr);
        }
        if(baiArr.length > 0){
           arrNew.push(baiArr);
        }
        if(shiArr.length > 0){
           arrNew.push(shiArr);
        }
        if(geArr.length > 0){
           arrNew.push(geArr);
        }
        for(var i = 0; i < arrNew.length; i++){
            for(var i1 = 0; i1 < arrNew[i].length; i1++){

                for(var x = i + 1; x < arrNew.length; x++){
                    for(var n = 0; n < arrNew[x].length; n++){
                        tempArr.push(arrNew[i][i1] + "" + arrNew[x][n]);
                    }

                }

            }

        }
        return tempArr.length;
    }

   function changeState(zhushu){
        $('.p1 .i0').html(zhushu);
        $('.p1 .i_beishu').html($("#inputBeishu").val());
        var strFd = $(".fandian-bfb").html();
        var num = parseFloat(strFd.toString().substr(0,strFd.length-1)) / 100;
        var totalMoney = parseFloat($("#inputBeishu").data("beishu")) * zhushu * parseFloat($("#inputMoney").data("money"));
        var p1_i2 = (totalMoney * num).toString();
        p1_i2 = isNaN(p1_i2) == true ? "0.0000" :p1_i2;
        $('.p1 .i_fanD').html(p1_i2.substr(0,p1_i2.indexOf(".") + 3));
        $('.p1 .i_money').html(totalMoney);
    }


    function getDwdZhushu() {
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

        if(typeof newArr == "undefined" || newArr.length <= 0){
            if(typeof clearStateTouZhu == 'function'){
                clearStateTouZhu();
            }
            return;
        }
        return newArr.length;
    }
</script>
<script>
    function getSuiji(total) {
        var betFormList = suiji(total);
        $.each(betFormList, function (index, value) {
            var html = template("template_touzhu", value);
            $("#zhudanList").append(html);
        });
        calcAll();
    }

    function clearSelected() {
        $(".Single .layout .Pick ul li span.acti").removeClass("acti");
        $(".re-5x-i i.acti").removeClass("acti");
        $("#zhushuInfo").data("zhushu", 0);
        if(typeof clearStateTouZhu == 'function'){
            clearStateTouZhu();
        }
        calc();
    }

    function removeThisItem(obj) {
        $(obj).parent().parent().parent().remove();
        calcAll();
    }
    function clearZhudan() {
        $("#zhudanList li:not('.head')").remove();
        calcAll();
    }

    function calc() {
        var money = $("#inputMoney").data("money");
        var beishu = $("#inputBeishu").data("beishu");
        var zhushu = $("#zhushuInfo").data("zhushu");

        var totalMoney = mul(beishu * zhushu, money);

        $("#beishuInfo").html(beishu);
        $("#totalMoneyInfo").data("total_money", totalMoney).html(totalMoney);
    }

    function clearTextarea() {
        $(".content_jiang textarea").val('');
        clearStateTouZhu();
    }

    function daoRu() {
        alert("开发中，敬请期待...");
    }

    function tjzd() {
        var betForm = {};
        if (!getZhudan(betForm)) {
            return;
        }
        clearSelected();
        var html = template("template_touzhu", betForm);
        $("#zhudanList").append(html);
        calcAll();
    }


    function getZhudan(obj) {
        var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
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
        var zhushu = getDwdZhushu();

        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "定位胆-定位胆";
        var wanStr = wanArr.length > 0 ? ("万位: " + wanArr.join("")) : "";
        var qianStr = qianArr.length > 0 ? (" 千位: " + qianArr.join("")) : "";
        var baiStr = baiArr.length > 0 ? (" 百位: " + baiArr.join("")) : "";
        var shiStr = shiArr.length > 0 ?  (" 十位: " + shiArr.join("")) : "";
        var geStr = geArr.length > 0 ? (" 个位: " + geArr.join("")) : "";
        obj.content = wanStr + qianStr + baiStr + shiStr + geStr;
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }


    function calcAll() {
        var totalZhushu = 0;
        var totalBeishu = 0;
        var totalMoney = 0;

        $("#zhudanList li:not('.head')").each(function () {
            totalZhushu = add(totalZhushu, $(this).data("zhushu"));
            totalBeishu = add(totalBeishu, $(this).data("beishu"));
            totalMoney = add(totalMoney, $(this).data("total_money"));
        });

        var str = '总投 <span>' + totalZhushu + '</span> 注，<span>' + totalBeishu + '</span> 倍，共 <span>' + totalMoney + '</span> 元。';
        $("#zongtouInfo").html(str);
    }

    function suiji(total) {
        var result = [];
        for (var numIndex = 0; numIndex < total; ++numIndex) {
            var redArr = [];
            for (var i = 0; i <= 9; ++i) {
                redArr[i] = 0;
            }

            var arr = [];
            while (arr.length != 6) {
                var num = parseInt(Math.random() * 10);
                if (redArr[num] != 1) {
                    redArr[num] = 1;
                    arr.push(num);
                }
            }

            var obj = {};
            obj.playName = "定位胆-定位胆";
            obj.content = "万位: " + arr[0] + " 千位: " + arr[1] + " 百位: " + arr[2] + " 十位: " + arr[3] + " 个位: " + arr[4];
            obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money"));
            obj.zhushu = 1;
            obj.beishu = $("#inputBeishu").data("beishu");
            obj.money = $("#inputMoney").data("money");
            obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
            obj.playGroupId = playGroupId;
            result.push(obj);
        }
        return result;
    }
</script>
<script>
    $(function () {
        $('.content_jiang .content_tex').keyup(function () {
            stateTouZhu('dan');
        });
        $('.slider-input').jRange({
            from: 0,
            to: 13,
            step: 0.1,
            format: '%s',
            width: $(".cl-1004").width(),
            theme: 'theme-green my-slide-theme',
            showLabels: false,
            showScale: false,
            snap: true,
            onstatechange: function () {
                var money_jangjin = $(".slider-input").val();
                money_jangjin = parseFloat(money_jangjin).toFixed(1);
                $(".fandian-bfb").html(money_jangjin + "%");
                var money_jangjin_zux = 49 - (49 - 42.5) / 13 * money_jangjin;
                money_jangjin = 98 - (98 - 85) / 13 * money_jangjin;
                $(".jiangjin-change").html(parseFloat(money_jangjin).toFixed(2));
                $(".jiangjin-change-zux").html(parseFloat(money_jangjin_zux).toFixed(2));
                if(typeof stateTouZhu == "function"){
                    var flag_str = '';
                    if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
                        flag_str = 'dwd';
                        stateTouZhu(flag_str);
                    }
                }
            }
        });

        $(".Single .layout .add_spot .left .sopt_wrap .down .down_menu i").click(function () {
            var text = $(this).text();
            $(this).parent().parent().find('input').val(text);
            $(this).parent().hide();

            $(this).parent().parent().find('input').data("money", parseInt(text));
            calc();
        });

        $(".Single .layout .add_spot .left .sopt_wrap .down span").click(function () {
            $(this).parent().find(".down_menu").show();
        });

        $(".Single .layout .add_spot .left .sopt_wrap .down .down_menu i").parent().parent().hover(function () {

        }, function () {
            $(this).find(".down_menu").hide();
        });

        $(".Single .layout .add_spot .left .sopt_wrap .reduce a.fl").click(function () {
            var val = parseInt($(".Single .layout .add_spot .left .sopt_wrap .reduce input").val());
            if (isNaN(val) || typeof val != 'number') {
                val = 1;
            }
            val = parseInt(val);

            --val;
            val = val < 1 ? 1 : val;
            $(".Single .layout .add_spot .left .sopt_wrap .reduce input").data("beishu", val).val(val);

            calc();
        });

        $(".Single .layout .add_spot .left .sopt_wrap .reduce a.fr").click(function () {
            var val = parseInt($(".Single .layout .add_spot .left .sopt_wrap .reduce input").val());
            if (isNaN(val) || typeof val != 'number') {
                val = 1;
            }
            val = parseInt(val);

            ++val;
            val = val < 1 ? 1 : val;
            $(".Single .layout .add_spot .left .sopt_wrap .reduce input").data("beishu", val).val(val);

            calc();
        });

    });
</script>

<script type="text/html" id="template_touzhu">
    <li
            data-zhushu="{{zhushu}}"
            data-beishu="{{beishu}}"
            data-total_money="{{totalMoney}}"
            data-money="{{money}}"
            data-play_group_id="{{playGroupId}}"
            data-content="{{content}}"
            class="re_touzhu_tem"
    >
            <div class="head-name">
                <span>{{playName}}</span>
            </div>
            <div class="content-jiang">
                <span class="neirong"><font color="red">{{content.split("|")[0]}}</font>&nbsp;</span>
                <span class="span1">{{zhushu}}注</span>
                <span class="span2">{{jiangJfanD}}</span>
                <span class="span3">{{totalMoney}}元</span>
                <span class="span4"><a href="javascript:void(0)" onclick="removeThisItem(this)"><img
                        src="${resPath}img/ico53.png" alt=""></a></span>
            </div>
    </li>
</script>