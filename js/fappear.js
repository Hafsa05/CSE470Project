(function ($) {
    $.fn.fappear = function (fn, options) {

        var settings = $.extend({

            data: undefined,
            one: true,

            accX: 0,
            accY: 0

        }, options);

        return this.each(function () {

            var t = $(this);
            t.fappeared = false;

            if (!fn) {
                
                t.trigger('fappear', settings.data);
                return;
            }

            var w = $(window);

            var check = function () {

                if (!t.is(':visible')) {

                    t.fappeared = false;
                    return;
                }

                //the element inside the visible window
                var a = w.scrollLeft();
                var b = w.scrollTop();
                var o = t.offset();
                var x = o.left;
                var y = o.top;

                var ax = settings.accX;
                var ay = settings.accY;
                var th = t.height();
                var wh = w.height();
                var tw = t.width();
                var ww = w.width();

                if (y + th + ay >= b &&
                    y <= b + wh + ay &&
                    x + tw + ax >= a &&
                    x <= a + ww + ax) {

                    if (!t.fappeared) t.trigger('fappear', settings.data);

                } else {

                    t.fappeared = false;
                }
            };

            var modifiedFn = function () {

                t.fappeared = true;
                if (settings.one) {
                    w.unbind('scroll', check);
                    var i = $.inArray(check, $.fn.fappear.checks);
                    if (i >= 0) $.fn.fappear.checks.splice(i, 1);
                }

                fn.apply(this, arguments);
            };

            if (settings.one) t.one('fappear', settings.data, modifiedFn);
            else t.bind('fappear', settings.data, modifiedFn);

            w.scroll(check);
            
            $.fn.fappear.checks.push(check);

            //check now
            (check)();
        });
    };

    //queue check
    $.extend($.fn.fappear, {

        checks: [],
        timeout: null,

        //process queue
        checkAll: function () {
            var length = $.fn.fappear.checks.length;
            if (length > 0) while (length--) ($.fn.fappear.checks[length])();
        },

        //check the queue
        run: function () {
            if ($.fn.fappear.timeout) clearTimeout($.fn.fappear.timeout);
            $.fn.fappear.timeout = setTimeout($.fn.fappear.checkAll, 20);
        }
    });
    
    $.each(['append', 'prepend', 'after', 'before', 'attr',
        'removeAttr', 'addClass', 'removeClass', 'toggleClass',
        'remove', 'css', 'show', 'hide'], function (i, n) {
        var old = $.fn[n];
        if (old) {
            $.fn[n] = function () {
                var r = old.apply(this, arguments);
                $.fn.fappear.run();
                return r;
            }
        }
    });

})(jQuery);


(function ($) {
    $.fn.countTo = function (options) {
        
        options = $.extend({}, $.fn.countTo.defaults, options || {});

        var loops = Math.ceil(options.speed / options.refreshInterval),
            increment = (options.to - options.from) / loops;

        return $(this).each(function () {
            var _this = this,
                loopCount = 0,
                value = options.from,
                interval = setInterval(updateTimer, options.refreshInterval);

            function updateTimer() {
                value += increment;
                loopCount++;
                $(_this).html(value.toFixed(options.decimals));

                if (typeof(options.onUpdate) == 'function') {
                    options.onUpdate.call(_this, value);
                }

                if (loopCount >= loops) {
                    clearInterval(interval);
                    value = options.to;

                    if (typeof(options.onComplete) == 'function') {
                        options.onComplete.call(_this, value);
                    }
                }
            }
        });
    };

    $.fn.countTo.defaults = {
        from: 0,  // the number the element should start at
        to: 100,  // the number the element should end at
        speed: 1000,  // how long it should take to count between the target numbers
        refreshInterval: 100,  // how often the element should be updated
        decimals: 0,  // the number of decimal places to show
        onUpdate: null,  // callback method for every time the element is updated,
        onComplete: null,  // callback method for when the element finishes updating
    };
})(jQuery);	
