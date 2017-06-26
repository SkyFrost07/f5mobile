<?php
/**
 * Single Product Share
 *
 * Sharing plugins can hook into here or you can add your own code directly.
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/share.php.
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
 * @version     1.6.4
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

global $wp;
$current_url = home_url(add_query_arg(array(),$wp->request));
?>

<div class="fb-like" data-href="<?php echo $current_url; ?>" data-width="120" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="true"></div>

<script src="https://apis.google.com/js/platform.js" async defer>
  {lang: 'vi'}
</script>

<div class="g-plus" data-action="share" data-width="120" data-href="<?php echo $current_url; ?>"></div>

<?php // do_action( 'woocommerce_share' ); // Sharing plugins can hook into here

/* Omit closing PHP tag at the end of PHP files to avoid "headers already sent" issues. */
