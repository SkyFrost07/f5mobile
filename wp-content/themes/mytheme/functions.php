<?php

/* ----------------------------------------------------------------------------------- */
/* Add Rss feed support to Head section
  /*----------------------------------------------------------------------------------- */
add_theme_support('automatic-feed-links');
/* ----------------------------------------------------------------------------------- */
/* Register main menu for Wordpress use
  /*----------------------------------------------------------------------------------- */
register_nav_menus(
        array(
            'primary' => __('Primary Menu'),
            'footer' => __('Footer Menu'),
            'cat_menu' => __('Category Menu')
        )
);

function pl_register_sidebars() {
	register_sidebar(array(				// Start a series of sidebars to register
		'id' => 'subscribe', 					// Make an ID
		'name' => 'Đăng ký nhận bản tin',				// Name it
		'description' => 'Form đăng ký nhận bản tin', // Dumb description for the admin side
		'before_widget' => '<div>',	// What to display before each widget
		'after_widget' => '</div>',	// What to display following each widget
		'before_title' => '<h3 class="foot-title text-uppercase">',	// What to display before each widget's title
		'after_title' => '</h3>',		// What to display following each widget's title
		'empty_title'=> '',					// What to display in the case of no title defined for a widget
		// Copy and paste the lines above right here if you want to make another sidebar, 
		// just change the values of id and name to another word/name
	));
} 
// adding sidebars to Wordpress (these are created in functions.php)
add_action( 'widgets_init', 'pl_register_sidebars' );

/*
 * custom image size
 */

function pl_add_support_theme() {
    add_theme_support('post-thumbnails');
    add_image_size('medium', 300, 200, true);
    add_image_size('slide', 1170, 450, true);
    // hide admin bar
    if (!is_admin()) {
        show_admin_bar(false);
    }
    add_theme_support('woocommerce');
    define('WOOCOMMERCE_USE_CSS', false);
}

add_action('after_setup_theme', 'pl_add_support_theme');

/*
 * remove admin bar logo 
 */

function fl_wp_logo($wp_admin_bar) {
    $wp_admin_bar->remove_node('wp-logo');
}

add_action('admin_bar_menu', 'fl_wp_logo', 999);

/**
 * remove dashboard meta box
 */
function pl_dashboard_meta() {
    remove_meta_box('dashboard_primary', 'dashboard', 'side');
}

add_action('admin_init', 'pl_dashboard_meta');

/**
 * custom wp admin footer
 */
function pl_footer_admin() {
    echo 'Admin panel';
}

add_filter('admin_footer_text', 'pl_footer_admin');

function pl_footer_shh() {
    remove_filter('update_footer', 'core_update_footer');
}

add_action('admin_menu', 'pl_footer_shh');

/*
 * custom logo login
 */

function pl_login_stylesheet() {
    wp_enqueue_style('custom-login', get_stylesheet_directory_uri() . '/css/custom-login.css');
}

add_action('login_enqueue_scripts', 'pl_login_stylesheet');

function pl_login_logo_url() {
    return home_url();
}

add_filter('login_headerurl', 'pl_login_logo_url');

/**
 * render title
 */
function pl_head_title() {
    if (function_exists('is_tag') && is_tag()) {
        single_tag_title("Tag for &quot;");
        echo '&quot; - ';
    } elseif (is_archive()) {
        wp_title('');
        echo ' - ';
    } elseif (is_search()) {
        echo 'Search for &quot;' . wp_specialchars($s) . '&quot; - ';
    } elseif (!(is_404()) && (is_single()) || (is_page())) {
        wp_title('');
        echo ' - ';
    } elseif (is_404()) {
        echo 'Not Found - ';
    }
    if (is_home()) {
        bloginfo('name');
        echo ' - ';
        bloginfo('description');
    } else {
        bloginfo('name');
    }
    if ($paged > 1) {
        echo ' - page ' . $paged;
    }
}

function pl_tax_title ($post) {
    ?>
    <h2 class="page-title">
        <?php 
        if (is_category()) {
            single_cat_title();     
        } elseif( is_tag() ) {
            echo 'Tag: '; single_tag_title();
        } elseif (is_day()) {
            echo 'Danh mục ngày '; the_time('F jS, Y'); 
        } elseif (is_month()) {
            echo 'Danh mục năm '; the_time('F, Y');
        } elseif (is_year()) {
            echo 'Danh mục năm '; the_time('Y');
        } elseif (is_author()) { 
            echo 'Tác giả';
        } elseif (isset($_GET['paged']) && !empty($_GET['paged'])) { 
            echo 'Blog';
        } 
        ?>
    </h2>
    <?php
}

//style and script
function pl_theme_scripts() {
    $template_uri = get_template_directory_uri();
    //style
    wp_enqueue_style('bootstrap', $template_uri . '/css/bootstrap.min.css', array(), '1.0', 'all');
    wp_enqueue_style('fontawesome', $template_uri . '/css/font-awesome.min.css', array(), '1.0', 'all');
    wp_enqueue_style('flexslider', $template_uri . '/plugins/flexslider/flexslider.css', array(), '1.0', 'all');
    wp_enqueue_style('owlcarousel', $template_uri . '/plugins/owl-carousel/assets/owl.carousel.min.css', array(), '1.0', 'all');
    wp_enqueue_style('owlcarousel-theme', $template_uri . '/plugins/owl-carousel/assets/owl.theme.default.min.css', array(), '1.0', 'all');
    if (is_singular('product') || is_taxonomy('product_cat')) {
        wp_enqueue_style('woocommerce', $template_uri . '/css/woocommerce.css', array(), '1.0', 'all');
    }
    if (is_singular()) {
        wp_enqueue_style('jquery-ui', $template_uri . '/css/jquery-ui.css', array(), '1.1.12', 'all');
    }
    wp_enqueue_style('main', $template_uri . '/css/main.css', array(), '1.0', 'all');
    wp_enqueue_style('screen', $template_uri . '/css/screen.css', array(), '1.0', 'all');

    //script
    wp_enqueue_script('bootstrap', $template_uri . '/js/bootstrap.min.js', array('jquery'), 1.0, true);
    wp_enqueue_script('flexslider', $template_uri . '/plugins/flexslider/jquery.flexslider-min.js', array('jquery'), 1.0, true);
    wp_enqueue_script('owlcarousel', $template_uri . '/plugins/owl-carousel/owl.carousel.min.js', array('jquery'), 1.0, true);
    if ( is_singular() ) { 
        wp_enqueue_script("comment-reply");
        wp_enqueue_script('jquery-ui', $template_uri . '/js/jquery-ui.min.js', array('jquery'));
    }
    wp_enqueue_script('script', $template_uri . '/js/main.js', array('jquery'), 1.0, true);
}

add_action('wp_enqueue_scripts', 'pl_theme_scripts');

add_action( 'admin_enqueue_scripts', 'pl_load_admin_style' );
function pl_load_admin_style() {
     wp_enqueue_style( 'admin_css', get_template_directory_uri() . '/css/admin-style.css', false, '1.0.0' );
}

//more theme function
include_once 'include/pl_functions.php';

?>