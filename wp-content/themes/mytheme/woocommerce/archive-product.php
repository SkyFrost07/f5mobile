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

<?php
/**
 * woocommerce_before_main_content hook.
 *
 * @hooked woocommerce_output_content_wrapper - 10 (outputs opening divs for the content)
 * @hooked woocommerce_breadcrumb - 20
 * @hooked WC_Structured_Data::generate_website_data() - 30
 */
do_action('woocommerce_before_main_content');
?>

<div class="page-head">

    <?php if (apply_filters('woocommerce_show_page_title', true)) : ?>

        <h2 class="page-title tit-title text-uppercase">
            <strong><?php woocommerce_page_title(); ?></strong>
            <?php
//                woocommerce_product_subcategories();
            $term = get_queried_object();
            $termChilds = get_terms('product_cat', [
                'hide_empty' => 0,
                'parent' => $term->term_id,
                'orderby' => 'count',
                'order' => 'DESC'
            ]);
            
            if ($termChilds) {
                ?>
                <ul class="sub-cats list-inline pull-right">
                <?php foreach ($termChilds as $child) { ?>
                    <li><a href="<?php echo get_term_link($child); ?>"><?php echo $child->name ?></a></li>
                <?php } ?>
                </ul>
            <?php } ?>
        </h2>
    
        <div class="clearfix"></div>

    <?php endif; ?>

    <?php
    /**
     * woocommerce_archive_description hook.
     *
     * @hooked woocommerce_taxonomy_archive_description - 10
     * @hooked woocommerce_product_archive_description - 10
     */
//    do_action('woocommerce_archive_description');
    ?>

</div>

<?php if (have_posts()) : ?>

    <?php
    /**
     * woocommerce_before_shop_loop hook.
     *
     * @hooked wc_print_notices - 10
     * @hooked woocommerce_result_count - 20
     * @hooked woocommerce_catalog_ordering - 30
     */
    do_action('woocommerce_before_shop_loop');
    ?>

    <?php // woocommerce_product_loop_start(); ?>

    <?php // woocommerce_product_subcategories(); ?>

    <div class="clearfix"></div>
    
    <div class="items row row-items product-row-items mgb-15">

    <?php while (have_posts()) : the_post(); ?>

        <?php
        /**
         * woocommerce_shop_loop hook.
         *
         * @hooked WC_Structured_Data::generate_product_data() - 10
         */
        do_action('woocommerce_shop_loop');
        ?>

        <?php // wc_get_template_part('content', 'product'); ?>
        
        <div class="col-xs-6 col-md-3 item">
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

    <?php endwhile; // end of the loop. ?>
        
    </div>

    <?php // woocommerce_product_loop_end(); ?>

    <?php
    /**
     * woocommerce_after_shop_loop hook.
     *
     * @hooked woocommerce_pagination - 10
     */
    do_action('woocommerce_after_shop_loop');
    ?>

<?php elseif (!woocommerce_product_subcategories(array('before' => woocommerce_product_loop_start(false), 'after' => woocommerce_product_loop_end(false)))) : ?>

    <?php
    /**
     * woocommerce_no_products_found hook.
     *
     * @hooked wc_no_products_found - 10
     */
    do_action('woocommerce_no_products_found');
    ?>

<?php endif; ?>

<?php
/**
 * woocommerce_after_main_content hook.
 *
 * @hooked woocommerce_output_content_wrapper_end - 10 (outputs closing divs for the content)
 */
do_action('woocommerce_after_main_content');
?>

<?php
/**
 * woocommerce_sidebar hook.
 *
 * @hooked woocommerce_get_sidebar - 10
 */
//do_action('woocommerce_sidebar');
?>

<?php get_footer('shop'); ?>
