<?php
/*
 * Template name: Trang kiểm tra đơn hàng
 */

get_header();
?>

<div class="container">
    
    <?php woocommerce_breadcrumb(); ?>
    
    <?php
    if (have_posts()): while (have_posts()): the_post();
            ?>

            <h2 class="single-title"><?php the_title(); ?></h2>

            <div class="mgb-20" style="font-size: 1.2rem;">
                
                <?php if (isset($_POST['submit_id']) && 
                        $_POST['submit_id'] == 'check_order_submit' && 
                        isset($_POST['order_id']) && 
                        $_POST['order_id']) : 
                ?>
                
                <?php 
                $order_id = sanitize_text_field($_POST['order_id']);
                $order = new WC_Order($order_id);
                
                if ($order->id > 0) {
                ?>
                
                <div class="row">
                    <div class="col-sm-8 col-md-9">
                        <div class="woocommerce">
                            <?php include TEMPLATEPATH . '/woocommerce/checkout/thankyou.php'; ?>
                        </div>          
                    </div>
                </div>
                
                <?php } else {
                    echo '<p>Không tìm thấy đơn hàng, vui lòng nhập lại!</p>';
                    include 'include/order_check.php';
                } ?>
                
                <?php else : ?>
                
                <?php include 'include/order_check.php' ?>
                
                <?php endif; ?>
            </div>

            <div class="post_content">
        <?php the_content(); ?>
            </div>

                <?php
            endwhile;
        endif;
        ?>
</div>

<?php
get_footer();
?>
