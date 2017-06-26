<?php
/**
 * The template for displaying product content in the single-product.php template
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-single-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see 	    https://docs.woocommerce.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     3.0.0
 */
if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}
?>

<?php
/**
 * woocommerce_before_single_product hook.
 *
 * @hooked wc_print_notices - 10
 */
do_action('woocommerce_before_single_product');

if (post_password_required()) {
    echo get_the_password_form();
    return;
}

global $product;

include TEMPLATEPATH . '../include/nav_scroll_prod.php';

?>

<div id="product-<?php the_ID(); ?>" <?php post_class(); ?>>

    <div class="wrapper mgb-20" id="top_product_detail">
        <div class="row">
            <div class="col-md-4">
                <?php
                /**
                 * woocommerce_before_single_product_summary hook.
                 *
                 * @hooked woocommerce_show_product_sale_flash - 10
                 * @hooked woocommerce_show_product_images - 20
                 */
                do_action('woocommerce_before_single_product_summary');
                ?>
            </div>

            <div class="col-md-8 prod-top-col">

                <div class="summary entry-summary">

                    <h2 class="single-prod-title singgle-title bd-bt-box">
                        <?php the_title(); ?>
                    </h2>

                    <div class="prod-head-single bd-bt-box">
                        <div class="row">
                            <div class="col-sm-6">
                                <?php woocommerce_template_single_price(); ?>
                            </div>
                            <div class="col-sm-6">
                                <div class="prod-social-single">
                                    <?php woocommerce_template_single_sharing(); ?>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 prod-excerpt-col">
                            <div class="prod-excerpt-box pdt-15">
                                <?php woocommerce_template_single_excerpt(); ?>
                            </div>
                            <?php 
                            $warrants = get_the_terms($product->id, 'warrant');
                            if ($warrants) {
                                echo '<h4 class="small-title">Tặng kèm gói bảo hành</h4>';
                                foreach ($warrants as $term) {
                                ?>
                                <div class="prod-excerpt-box warrant-box">
                                    <p><i class="fa fa-check-square"></i> <strong><?php echo $term->name; ?></strong></p>
                                    <?php echo get_field('tax_content', $term); ?>
                                </div>
                                <?php 
                                }
                            } 
                            ?>
                        </div>
                        <div class="col-md-6 prod-more-info-col">
                            <div class="inner-col">
                                <div class="fullbox-info bd-bt-box">
                                    <h4 class="small-title">Bộ sản phẩm tiêu chuẩn</h4>
                                    <div><?php echo get_post_meta($product->id, 'prod_fullbox', true); ?></div>
                                </div>

                                <?php
                                $price_related_ids = get_post_meta($product->id, '_upsell_ids', true);
                                $price_prods = null;
                                if ($price_related_ids) {
                                    $price_prods = new WP_Query([
                                        'post_type' => 'product',
                                        'posts_per_page' => -1,
                                        'post__in' => $price_related_ids
                                    ]);
                                }
                                if ($price_prods && $price_prods->have_posts()):
                                    $price_index = 1;
                                ?>
                                <div class="prod-other-info">
                                    <h4 class="small-title">Mức giá theo màu sắc và dung lượng:</h4>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered prod-other-table">
                                            <thead>
                                                <tr>
                                                    <th>STT</th>
                                                    <th>Điện thoại</th>
                                                    <th class="min-w-100">Giá bán</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php while ($price_prods->have_posts()): $price_prods->the_post(); ?>
                                                <tr>
                                                    <td><?php echo $price_index++; ?></td>
                                                    <td><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></td>
                                                    <td><strong class="cl_price"><?php echo pl_get_current_price(get_the_ID()); ?></strong></td>
                                                </tr>
                                                <?php endwhile; $price_prods->reset_postdata(); wp_reset_query(); ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <?php
                                endif; ;
                                ?>

                                <div class="prod-add-to-cart pdt-15">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <?php woocommerce_template_single_add_to_cart(); ?>
                                        </div>
                                        <div class="col-xs-6">
                                            <a class="btn btn-block btn-main" href="<?php echo home_url().'/tra-gop' ?>">
                                                <strong>Trả góp lãi suất 0%</strong>
                                                <?php $price_min_pay = pl_get_current_price($product->id, ot_get_option('percent_min_pay', 20)); ?>
                                                <span>Từ <?php echo $price_min_pay; ?></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                
                                <?php
                                $wc_struct_data = new WC_Structured_Data();
                                $wc_struct_data->generate_product_data($product);
                                ?>
                                
                                <div class="prod-rating">
                                    <?php woocommerce_template_single_rating(); ?>
                                </div>
                            </div>
                        </div>
                    </div>

                    <?php 
                    /**
                     * woocommerce_single_product_summary hook.
                     *
                     * @hooked woocommerce_template_single_title - 5
                     * @hooked woocommerce_template_single_rating - 10
                     * @hooked woocommerce_template_single_price - 10
                     * @hooked woocommerce_template_single_excerpt - 20
                     * @hooked woocommerce_template_single_add_to_cart - 30
                     * @hooked woocommerce_template_single_meta - 40
                     * @hooked woocommerce_template_single_sharing - 50
                     * @hooked WC_Structured_Data::generate_product_data() - 60
                     */
    //                do_action('woocommerce_single_product_summary');
                    ?>

                </div><!-- .summary -->

            </div>
        </div>
    </div>
    
    <div class="wrapper mgb-20" id="digital_info">
        
        <!--content product-->
        <div class="row">
            <div class="col-md-8 prod-content-single">
                <?php woocommerce_product_description_tab(); ?>
            </div>
            <div class="col-md-4">
                <?php 
                $attributes = $product->get_attributes();
                if ($attributes) {
                ?>
                <h3 class="medium-title">Thông số kỹ thuật: <?php the_title(); ?></h3>
                <div class="table-responsive">
                    <table class="table prod-info-table">
                        <tbody>
                            <?php foreach ($attributes as $attribute) { ?>
                            <tr>
                                <td><?php echo esc_html( wc_attribute_label( $attribute->get_name() ) ); ?></td>
                                <td><?php echo esc_attr( wc_implode_text_attributes( wp_list_pluck( $attribute->get_terms(), 'name' ) ) ); ?></td>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
                <?php } ?>
            </div>
        </div>
        <!--end content product-->
    </div>
    
    <div class="wrapper mgb-20" id="accessories_box">

        <div class="row">
            <div class="col-sm-8 cross-sells-col">
                <?php
                $cross_sell_ids = get_post_meta($product->id, '_crosssell_ids', true);
                if ($cross_sell_ids) {
                    $cross_prods = new WP_Query([
                        'post_type' => 'product',
                        'posts_per_page' => 10,
                        'post__in' => $cross_sell_ids
                    ]);
                    
                    if ($cross_prods->have_posts()):
                        ?>
                        <h3 class="medium-title"><?php echo $cross_prods->post_count ?> phụ kiện phù hợp với <?php the_title(); ?></h3>
                        <div class="row-items items product-row-items slider-items owl-carousel owl-theme cross-sells-items">
                            <?php
                            while ($cross_prods->have_posts()): $cross_prods->the_post();
                                ?>
                                <div class="item">
                                    <?php
                                    $permalLink = get_the_permalink();
                                    $title = get_the_title();
                                    ?>

                                    <div class="inner">
                                        <div class="thumb">
                                            <a href="<?php echo $permalLink ?>">
                                                <?php woocommerce_template_loop_product_thumbnail() ?>
                                            </a>
                                        </div>
                                        <div class="item-body">
                                            <h3 class="item-title"><a href="<?php echo $permalLink ?>" title="<?php echo $title ?>"><?php echo wp_trim_words($title, TITLE_MAX_LEN, '...'); ?></a></h3>
                                                <?php woocommerce_template_loop_price(); ?>
                                        </div>
                                    </div>
                                </div>
                                <?php
                            endwhile;
                            $cross_prods->reset_postdata(); wp_reset_query();
                            ?>
                        </div>
                        <?php
                    endif;
                }
                ?>
            </div>
            <div class="col-sm-4">
                <div class="social-subscribe">
                    <?php include TEMPLATEPATH.'../include/youtube_subscribe.php'; ?>
                </div>
            </div>
        </div>
    
    </div>
    
    <div class="prod-checkout-single mgb-25">
        <div class="row">
            <div class="col-sm-4">
                <div class="checkout-box bd-right buy-safe-desc" style="background: url(<?php echo ot_get_option('buy_safe_image') ?>) no-repeat right bottom;" >
                    <?php echo ot_get_option('buy_safe_desc'); ?>
                </div>
            </div>
            <div class="col-sm-4 bd-right">
                <div class="checkout-box price-deliver">
                    <div class="total-price">
                        <span>Tổng tiền: </span> <span class="amount-price"><?php echo pl_get_current_price($product->id); ?></span>
                    </div>
                    <?php 
                    $payments_list = ot_get_option('payment_method_single'); 
                    if ($payments_list) {
                        foreach ($payments_list as $payment) {
                    ?>
                    <div class="media-deliver media">
                        <div class="media-left pull-left">
                            <img src="<?php echo $payment['image'] ?>" alt="icon">
                        </div> 
                        <div class="media-body">
                            <h4 class="media-heading"><?php echo $payment['title']; ?></h4>
                        </div>
                    </div>
                    <?php
                        }
                    }
                    ?>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="checkout-box prod-add-to-cart">
                    <?php woocommerce_template_single_add_to_cart(); ?>

                    <a class="btn btn-block btn-main" href="<?php echo home_url().'/tra-gop' ?>">
                        <strong>Trả góp lãi suất 0%</strong>
                        <span>Từ <?php echo $price_min_pay; ?></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    
    <div class="prod-meta-single">
        <div class="row">
            <div class="col-md-4 prod-related-single">
                <div class="border-wrap normal-title text-uppercase" style="padding: 6px 5px 3px;">Top sản phẩm bán chạy</div>
                <?php pl_popular_products(); ?>
            </div>
            <div class="col-md-8 prod-comment-single">
                <div class="border-wrap">
                    <?php woocommerce_template_single_meta(); ?>
                </div>
                <div class="prod-comments wrapper no-padding-top mgb-20">
                    <?php woocommerce_output_product_data_tabs(); ?>
                </div>
            </div>
        </div>
    </div>

    <?php
    /**
     * woocommerce_after_single_product_summary hook.
     *
     * @hooked woocommerce_output_product_data_tabs - 10
     * @hooked woocommerce_upsell_display - 15
     * @hooked woocommerce_output_related_products - 20
     */
//    do_action('woocommerce_after_single_product_summary');
    ?>

</div><!-- #product-<?php the_ID(); ?> -->

<?php do_action('woocommerce_after_single_product'); ?>
