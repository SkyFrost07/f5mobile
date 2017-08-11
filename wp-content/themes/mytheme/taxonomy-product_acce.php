<?php
/**
 * The Template for displaying product archives, including the main shop page which is a post type archive
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/archive-product.php.
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
 * @version     2.0.0
 */
if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}

get_header('shop');

?>

<div class="container">
    
    <?php woocommerce_breadcrumb(); ?>
    
    <div class="row">
        
        <div class="col-sm-8 col-md-9 acce-ct-col">
            <div class="wrapper mgb-20" style="padding-top: 15px;">
                
                <div class="row">
                    <div class="col-md-7">
                        <form class="cat-top-search" method="get" action="<?php echo home_url(); ?>">
                            <div class="form-group row has-success">
                                <label class="col-sm-4 col-md-3">Tìm kiếm cho</label>
                                <div class="col-sm-8 col-md-9">
                                    <input type="hidden" name="post_type" value="product" />
                                    <input type="hidden" name="taxonomy" value="product_acce" />
                                    <input class="form-control" name="s" type="text" placeholder="Nhập tên phụ kiện, sản phẩm">
                                    <button type="submit" class="btn btn-default icon"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </form>

                        <?php 
                        $prod_cats = get_terms([
                            'taxonomy' => 'product_cat',
                            'hide_empty' => 0,
                            'orderby' => 'count',
                            'order' => 'DESC',
                            'number' => 6
                        ]);
                        if ($prod_cats) {
                        ?>
                        <div class="mgb-20" style="font-size: 1.1rem;">
                            Xem thêm: 
                            <?php foreach ($prod_cats as $idx => $cat) { ?>
                            <a href="<?php echo get_term_link($cat); ?>"><?php echo $cat->name ?></a><?php echo $idx + 1 < count($prod_cats) ? ', ' : ''; ?>
                            <?php } ?>
                        </div>
                        <?php } ?>
                    </div>

                    <div class="col-md-5">
                        <p>Đổi trả miễn phí 30 ngày (<a href="<?php echo home_url('chinh-sach/chinh-sach-doi-tra-hang'); ?>">xem chi tiết</a>)<br />
                            Bảo hành 1 đổi 1 trong vòng 1 năm. Không áp dụng cho ốp lưng, bao da (<a href="<?php echo home_url('chinh-sach/chinh-sach-bao-hanh') ?>">xem chi tiết</a>)</p>
                    </div>
                </div>
                
                <?php if (have_posts()) : ?>

                    <?php
                    do_action('woocommerce_before_shop_loop');
                    ?>

                    <div class="clearfix"></div>
                    
                    <div class="items row row-items product-row-items mgb-15 accessories-items">

                    <?php while (have_posts()) : the_post(); ?>

                        <?php
                        do_action('woocommerce_shop_loop');
                        ?>

                        <div class="col-xs-6 col-md-3 item">
                            <?php include 'include/product_item.php' ?>
                        </div>

                    <?php endwhile; // end of the loop. ?>

                    </div>

                    <?php
                    do_action('woocommerce_after_shop_loop');
                    ?>

                <?php elseif (!woocommerce_product_subcategories(array('before' => woocommerce_product_loop_start(false), 'after' => woocommerce_product_loop_end(false)))) : ?>

                    <?php
                    do_action('woocommerce_no_products_found');
                    ?>

                <?php endif; ?>
                
            </div>
        </div>
        
        <div class="col-sm-4 col-md-3 acce-sb-col">
            <div class="wrapper mgb-20">
                <?php get_sidebar('acce'); ?>
            </div>
        </div>
        
    </div>
    
</div>


<?php get_footer('shop'); ?>
