<?php
if (!defined('TITLE_MAX_LEN')) {
    define('TITLE_MAX_LEN', 15);
}

if (!function_exists('pl_excerpt')) {

    function pl_excerpt($post, $length = 20, $more = '...') {
        $post_excerpt = get_the_excerpt($post);
        if (!$post_excerpt) {
            $post_excerpt = get_the_content();
        }
        return wp_trim_words($post_excerpt, $length, $more);
    }

}

if (!function_exists('pl_add_post_view')) {
    
    function pl_add_post_view ($post_id = null) {
        if (!$post_id) {
            $post_id = get_the_ID();
        }
        $view = get_post_meta($post_id, '_post_views', true);
        if (!$view) {
            $view = 0;
        }
        update_post_meta($post_id, '_post_views', ($view + 1));
    }
    
}

if (!function_exists('pl_get_post_view')) {
    
    function pl_get_post_view ($post_id = null) {
        if (!$post_id) {
            $post_id = get_the_ID();
        }
        $view = (int) get_post_meta($post_id, '_post_views', true);
        if (!$view) {
            return 0;
        }
        return number_format($view, 0, ',', '.');
    }
    
}

function pl_filter_post_thumbnail_html( $html ) {
    if ( '' == $html ) {
        return '<img src="' . get_template_directory_uri() . '/images/default.jpg" class="img-responsive" />';
    }
    return $html;
}
add_filter( 'post_thumbnail_html', 'pl_filter_post_thumbnail_html' );


if (!function_exists('pl_featured_products')) {

    function pl_featured_products() {
        $featured = new WP_Query([
            'post_type' => 'product',
            'posts_per_page' => 8,
            'tax_query' => [
                [
                    'taxonomy' => 'product_visibility',
                    'field' => 'name',
                    'terms' => 'featured',
                    'operator' => 'IN'
                ]
            ]
        ]);

        if ($featured->have_posts()):
            ?>
            <div class="row-items items product-row-items slider-items owl-carousel owl-theme">
                <?php
                while ($featured->have_posts()): $featured->the_post();
                    ?>
                    <div class="item">
                        <?php
                        include 'product_item.php';
                        ?>
                    </div>
                    <?php
                endwhile;
                $featured->reset_postdata();
                ?>
            </div>
            <?php
        endif;
    }

}

if (!function_exists('pl_popular_products')) {
    function pl_popular_products () {
        $populars = new WP_Query([
            'post_type' => 'product',
            'meta_key' => 'total_sales',
            'orderby' => 'meta_value_num',
            'posts_per_page' => 4,
        ]);
        
        if ($populars->have_posts()):
            ?>
            <div class="row items row-items product-row-items cross-sells-items">
                <?php while ($populars->have_posts()) : $populars->the_post(); ?>
                
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
                <?php endwhile; $populars->reset_postdata(); wp_reset_query(); ?>
            </div>
            <?php
        endif;
    }
}

//customize price display
add_filter('woocommerce_get_price_html', 'pl_custom_price_html', 100, 2);

function pl_custom_price_html($price, $product) {
    if ( '' === $product->get_price() ) {
            $price = apply_filters( 'woocommerce_empty_price_html', '', $product );
    } elseif ( $product->is_on_sale() ) {
            $price = pl_custom_price_box( wc_get_price_to_display( $product, array( 'price' => $product->get_regular_price() ) ), wc_get_price_to_display( $product ) ) . $product->get_price_suffix();
    } else {
            $price = wc_price( wc_get_price_to_display( $product ) ) . $product->get_price_suffix();
    }
    return $price;
}

function pl_custom_price_box($regular_price, $sale_price) {
    $price = '<ins>' . ( is_numeric($sale_price) ? wc_price($sale_price) : $sale_price ) . '</ins> <del>' . ( is_numeric($regular_price) ? wc_price($regular_price) : $regular_price ) . '</del>';
    return $price;
}

function pl_get_current_price($product_id, $percent = 100) {
    $sale_price = get_post_meta($product_id, '_sale_price', true);
    if ($sale_price) {
        return pl_price($sale_price * $percent / 100);
    }
    $regular_price = get_post_meta($product_id, '_regular_price', true);
    return pl_price($regular_price * $percent / 100);
}

function pl_price($price, $has_currency = true) {
    $currency = get_woocommerce_currency_symbol();
    $decimal_separator = wc_get_price_decimal_separator();
    $thousand_separator = wc_get_price_thousand_separator();
    $decimals = wc_get_price_decimals();

    $negative = $price < 0;
    $price = floatval($negative ? $price * -1 : $price);
    $price = number_format($price, $decimals, $decimal_separator, $thousand_separator);

    if ($decimals > 0) {
        $price = wc_trim_zeros($price);
    }
    if (!$has_currency) {
        return $price;
    }
    return $price . ' ' . $currency;
}

// customize add to cart text
add_filter('woocommerce_product_single_add_to_cart_text', 'pl_product_single_add_to_cart_text');

function pl_product_single_add_to_cart_text() {
    return 'Mua ngay';
}

//comment facebook

function comments_facebook() {
    global $wp;
    $current_url = home_url(add_query_arg(array(),$wp->request));
    ?>
    <div class="fb-comments" data-href="<?php echo $current_url ?>" data-numposts="5" data-width="100%"></div>
    <?php
}

add_action('warrant_edit_form', function() {
    ?><style>.term-description-wrap{display:none;}</style><?php
}, 10, 2);
add_action('warrant_add_form', function() {
    ?><style>.term-description-wrap{display:none;}</style><?php
}, 10, 2);
add_filter('manage_edit-warrant_columns', function ( $columns ) {
    if (isset($columns['description']))
        unset($columns['description']);

    return $columns;
});

// woocommerce product data
// Display Fields
add_action('woocommerce_product_options_general_product_data', 'woo_add_custom_general_fields');

// Save Fields
add_action('woocommerce_process_product_meta', 'woo_add_custom_general_fields_save');

function woo_add_custom_general_fields() {

    global $woocommerce, $post;

    echo '<div class="options_group">';

    woocommerce_wp_textarea_input([
        'id' => 'prod_fullbox',
        'label' => 'Bộ sản phẩm tiêu chuẩn',
        'placeholder' => 'Bộ sản phẩm gồm ...',
        'rows' => 5,
        'description' => ''
    ]);

    echo '</div>';
}

function woo_add_custom_general_fields_save($post_id) {
    // Textarea
    $woocommerce_textarea = $_POST['prod_fullbox'];
    if (!empty($woocommerce_textarea))
        update_post_meta($post_id, 'prod_fullbox', esc_html($woocommerce_textarea));
}

//move comments fields
//function pl_move_comment_field_to_bottom( $fields ) {
//    $comment_field = $fields['comment'];
//    unset( $fields['comment'] );
//    $fields['comment'] = $comment_field;
//    return $fields;
//}
//add_filter( 'comment_form_fields', 'pl_move_comment_field_to_bottom' );

add_filter( 'loop_shop_per_page', 'pl_loop_shop_per_page', 20 );
function pl_loop_shop_per_page( $cols ) {
    return ot_get_option('pl_prod_per_page', 12);
}

// Remove some checkout billing fields
function pl_filter_checkout_fields ($fields){
    unset( $fields['billing']['billing_country'] );
    unset( $fields['billing']['billing_company'] );
    unset( $fields['billing']['billing_postcode'] );
    unset( $fields['billing']['billing_city'] );
    unset( $fields['billing']['billing_address_2'] );
    unset( $fields['billing']['billing_last_name'] );
    
    unset( $fields['shipping']['shipping_company']);
    unset( $fields['shipping']['shipping_country']);
    unset( $fields['shipping']['shipping_postcode']);
    unset( $fields['shipping']['shipping_city']);
    unset( $fields['shipping']['shipping_address_2']);
    unset( $fields['shipping']['shipping_last_name']);
    
    $fields['billing']['billing_first_name']['label'] = 'Họ và tên';
    $fields['billing']['billing_first_name']['class'] = ['form-row-wide'];
    $fields['billing']['billing_address_1']['type'] = 'textarea';
    
    $fields['shipping']['shipping_first_name']['label'] = 'Họ và tên';
    $fields['shipping']['shipping_first_name']['class'] = ['form-row-wide'];
    $fields['shipping']['shipping_address_1']['type'] = 'textarea';
    
    $fields['order']['order_comments']['label'] = 'Ghi chú';
    $fields['order']['order_comments']['placeholder'] = 'Ghi chú về đơn hàng, thời gian nhận hàng, ...';
    
    return $fields;
}
add_filter( 'woocommerce_checkout_fields', 'pl_filter_checkout_fields' );

function pl_special_title ($title = null) {
    $array_trans = [
        'Order received' => 'Đơn hàng đã được nhận',
    ];
    if (!$title) {
        $title = get_the_title();
    }
    foreach ($array_trans as $key => $value) {
         if ($title == $key) {
             return $value;
         }
    }
    return $title;
}

//add_filter('pre_get_posts', 'pl_pre_get_posts');
//
//function pl_pre_get_posts ($query) {
//    if ($query->is_search) {
//        
//    }
//}

function pl_template_chooser($template) {
    if (isset($_GET['s'])) {
        if (isset($_GET['taxonomy'])) {
            $taxonomy = sanitize_text_field($_GET['taxonomy']);
            if ($taxonomy == 'product_acce') {
                return TEMPLATEPATH . '/taxonomy-product_acce.php';
            }
        }
        
        if (isset($_GET['post_type'])) {
            $post_type = $_GET['post_type'];
            if ($post_type == 'hoi_dap') {
                return TEMPLATEPATH . '/taxonomy-question_cat.php';
            }
        }
    }
    return $template;
}

add_filter('template_include', 'pl_template_chooser'); 
