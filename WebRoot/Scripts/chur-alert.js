/*
 * jqeury-CcUi 0.1
 * Copyright (c) 2012 Chuchur  http://www.Chuchur.com/
 * Date: 2012-8-3
 * QQ :455105775
 * Dialog弹窗for bootstrap。
 */
(function () {
    // 可创建一个新的jQuery副本，不影响原有的jQuery对像。
    var plugin = jQuery.sub();
    // 扩展该副本与新的插件方法
    plugin.fn.extend({

        alert: function (options) {
            var defaults = {
                type: 'success',
                title: '提示',
                content: '恭喜，操作成功！',
                btntext: '确定',
                modal: true,
                draggabled: false,
                even: 'click'
            }
            /* 
            defaults = {
                type: '',       //类型有5种info，success，warning，primary，danger
                title: '',      //标题
                content: '',    //提示文字信息
                btntext: '',    //按钮文字
                modal: false，    //模式，开关灯
                draggable: false //是否可拖动
            }
            */
            var titles = {
                'success': '成功提示',
                'info': '询问提示',
                'warning': '警告提示',
                'primary': '权限提示',
                'danger': '出错提示'
            };

            if (!options['title']) {
                options['title'] = titles[options['type']];
            }
            var options = $.extend(defaults, options);
            return this.each(function () {
                var o = options;
                var _this = $(this);
                var _modal = '<iframe class="alert-modal"></iframe>'
                var _html = '<div class="alert alert-' + o.type + '">' +
                             '<a class="close closed" href="#">×</a>' +
                                '<h4 class="alert-heading">' + o.title + '</h4>' +
                                '<div class="context">' + o.content + '</div>' +
                                     '<div class="rightbtn">' +
                                         '<a class="btn closed btn-' + o.type + '" href="#">' + o.btntext + '</a>' + '</div></div>'
                _this.bind(o.even, function () {
                    if ($('.alert-' + o.type).length < 1) {
                        $('body').append(_html);
                        $('.alert-' + o.type).show('fast')
                        if (o.modal) {
                            $('body').append(_modal);
                        }
                        if (o.draggabled) {
                            $('.alert').draggable({ 'containment': 'body' });
                        }
                    }
                })
                $('.alert-' + o.type).find('.closed').live('click', function () {
                    $(this).parents().find('.alert-' + o.type).hide('fast', function () { $(this).remove(); $('.alert-modal').remove(); })//.remove();
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
})();