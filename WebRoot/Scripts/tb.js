 /* jqeury-CcUi 0.1
 * Copyright (c) 2012 Chuchur  http://www.Chuchur.com/
 * Date: 2012-6-25
 * 使用tableUI可以方便地将表格提示使用体验。先提供的功能有奇偶行颜色交替，鼠标移上高亮显示
 */
(function () {
    // 可创建一个新的jQuery副本，不影响原有的jQuery对像。
    var plugin = jQuery.sub();
    // 扩展该副本与新的插件方法
    plugin.fn.extend({
        tableUi: function (options) {
            var defaults = {
                thCss: 'thCss', //表头的背景颜色
                evenRowCss: 'treven', //奇数行的CSS
                oddRowCss: 'trodd',   //偶数行的CSS`
                activeCss: 'tractive'  //鼠标访问的CSS
            }
            var options = $.extend(defaults, options);
            return this.each(function () {
                var o = options;
                var tb = $(this);
                //添加奇偶行颜色
                tb.find("tr:even").addClass(o.evenRowCss);
                tb.find("tr:odd").addClass(o.oddRowCss);
                tb.find("th").addClass(o.thCss);
                //添加活动行颜色
                tb.find("tr").bind("mouseover", function () {
                    $(this).addClass(o.activeCss);
                });
                tb.find("tr").bind("mouseout", function () {
                    $(this).removeClass(o.activeCss);
                });
            })
        },
        tabs: function (options) { 
		var defaults = {
                MouseMode: 'mouseover' //鼠标操作绑定类型，当然你可以设为click..更多..
            }
            var options = $.extend(defaults, options);
            return this.each(function () {
				var o = options;
				var tabs = $(this);
				tabs.find('.list').not(':first').hide();
				var _nav = tabs.find('.nav a');
				_nav.eq(0).addClass('myon');
				var _panle = tabs.find('.list');
				$(_nav,tabs).bind(o.MouseMode,function(){
					var _index = $(_nav,tabs).index(this);
					_panle.hide().eq(_index).show();
					$(_nav).removeClass('myon').eq(_index).addClass('myon');
					}) 
				})
        }
    });
    // 把新的插件加入到源
    jQuery.fn.Chuchur = function () {
        this.addClass("plugin");
        // 确保我们的插件返回我们特殊的jQuery插件版本
        return plugin(this);
    };
})();// JavaScript Document
$(function(){
		$('.tb').Chuchur().tableUi();
	})