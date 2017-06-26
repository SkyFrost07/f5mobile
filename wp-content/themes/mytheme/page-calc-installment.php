<?php

/* 
 * Template name: Trang tính tiền trả góp
 */

get_header();
?>

<div class="container">
<?php

woocommerce_breadcrumb();

$percent_min = 20;
$percent_max = 70;
$month_min = 6;
$month_max = 16;
$interest = (float) ot_get_option('interest_percent', 0);

if (have_posts()): while(have_posts()): the_post();
$money = 10000000;
if (isset($_GET['money'])) {
    $param_money = $_GET['money'];
    if (is_numeric($param_money)) {
        $money = $param_money;
    }
}
?>

    <h2 class="single-title"><?php the_title(); ?></h2>
    
    <div class="post_content">
        <?php the_content(); ?>
    </div>
    
    <div class="wrapper mgb-20" style="font-size: 1.2rem;">
        <div class="row pdt-15">
            <div class="col-sm-8 col-md-9">
                <p class="cl_price">Số tiền trả góp <strong class="price" style="display: inline-block; font-size: 1.8rem;"><?php echo wc_price($money); ?></strong></p>
                
                <div style="padding-left: 20px; padding-right: 20px">
                    <h4 class="small-title">Số tiền trả trước (%)</h4>
                    <div id="money" class="cal-slider mgb-50"></div>

                    <h4 class="small-title">Thời hạn vay (tháng)</h4>
                    <div id="month" class="cal-slider mgb-50"></div>
                </div>
                
                <div id="cal_result">
                    <div class="media">
                        <div class="media-left pull-left">
                            <img class="img-responsive" style="max-width: 120px;" src="<?php echo ot_get_option('installment_icon'); ?>">
                        </div>
                        <div class="media-body">
                            <?php 
                            $symbol = get_woocommerce_currency_symbol(); 
                            $prepay = $percent_min * $money / 100;
                            $per_month = ($money - $prepay) / $month_min;
                            $pay_per_month = $per_month + ($money - $prepay) * $interest / 100;
                            $total_pay = $pay_per_month * $month_min + $prepay;
                            ?>
                            <p>Trả trước: <strong class="cl_price"><span id="pre_pay"><?php echo pl_price($percent_min * $money / 100, false); ?></span><span><?php echo $symbol; ?></span></strong></p>
                            <p>Trả mỗi tháng: <strong class="cl_price"><span id="pay_per_month"><?php echo pl_price($pay_per_month, false); ?></span><span><?php echo $symbol; ?></span></strong></p>
                            <p>Tổng trả trước + góp: <strong class="cl_price"><span id="total_pay"><?php echo pl_price($total_pay, false); ?></span><span><?php echo $symbol; ?></span></strong></p>
                        </div>
                    </div>
                    <p><i>Ghi chú: Kết quả tính toán này chỉ mang tính chất tham khảo và có thể sai lệch nhỏ với kết quả tính toán thực tế</i></p>
                </div>
                
            </div>
            <div class="col-sm-4 col-md-3">
                <div class="mgb-25"></div>
                <div class="phone_installment">
                    <?php the_field('phone_installment'); ?>
                </div>
            </div>
        </div>
    </div>

<?php
endwhile; endif;
?>
</div>

<?php
get_footer();
?>

<script>
    var money = <?php echo $money; ?>;
    var percent_min = <?php echo $percent_min; ?>;
    var percent_max = <?php echo $percent_max; ?>;
    var month_min = <?php echo $month_min; ?>;
    var month_max = <?php echo $month_max; ?>;
    var interest = parseFloat('<?php echo $interest; ?>');
    
    (function ($) {
        $('#money').slider({
            min: percent_min,
            max: percent_max,
            step: 10,
            change: function( event, ui ) {
                updateCaculator();
            }
        }).each(function() {
            var opt = $(this).data().uiSlider.options;
            var vals = opt.max - opt.min;
            for (var i = opt.min; i <= opt.max; i += opt.step) {
              var el = $('<label>'+ i +'%</label>').css('left',((i - opt.min)/vals*100)+'%');
              $( "#money" ).append(el);
            }
        });;
        
        $('#month').slider({
            min: month_min,
            max: month_max,
            step: 2,
            change: function( event, ui ) {
                updateCaculator();
            }
        }).each(function () {
            var opt = $(this).data().uiSlider.options;
            var vals = opt.max - opt.min;
            for (var i = opt.min; i <= opt.max; i += opt.step) {
              var el = $('<label>'+ i +'</label>').css('left',((i - opt.min)/vals*100)+'%');
              $( "#month" ).append(el);
            }
        });
        
        function updateCaculator () {
            var percent = $('#money').slider('value');
            var month = $('#month').slider('value');
            var pre_pay = money * percent / 100;
            var sub_pay = money - pre_pay;
            var per_month = sub_pay / month;
            var pay_per_month = per_month + sub_pay * interest / 100;
            var total_pay = pay_per_month * month + pre_pay;
            
            $('#pre_pay').text(addCommas(pre_pay.toFixed(0)));
            $('#pay_per_month').text(addCommas(pay_per_month.toFixed(0)));
            $('#total_pay').text(addCommas(total_pay.toFixed(0)));
        }
        
        function addCommas(nStr) {
            nStr += '';
            var x = nStr.split(',');
            var x1 = x[0];
            var x2 = x.length > 1 ? ',' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + '.' + '$2');
            }
            return x1 + x2;
        }
        
    })(jQuery);
</script>