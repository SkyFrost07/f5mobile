<?php
/**
 * Related Products
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/related.php.
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

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

if ( $related_products ) : ?>

	<section class="related products">

		<!--<h2><?php // esc_html_e( 'Related products', 'woocommerce' ); ?></h2>-->

		<?php // woocommerce_product_loop_start(); ?>
            <div class="row items row-items product-row-items">

			<?php foreach ( $related_products as $related_product ) : ?>
                
                <div class="col-xs-6 item">
                    
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
                                
//				 	$post_object = get_post( $related_product->get_id() );
//
//					setup_postdata( $GLOBALS['post'] =& $post_object );
//
//					wc_get_template_part( 'content', 'product' ); 
                                ?>

			<?php endforeach; ?>

		<?php // woocommerce_product_loop_end(); ?>
            </div>

	</section>

<?php endif;

wp_reset_postdata();
