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
            'primary' => __('Primary Menu')
        )
);

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
        single_tag_title("Tag Archive for &quot;");
        echo '&quot; - ';
    } elseif (is_archive()) {
        wp_title('');
        echo ' Archive - ';
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

//style and script
function pl_theme_scripts() {
    //style
    wp_enqueue_style('bootstrap', get_template_directory_uri() . '/css/bootstrap.min.css', array(), '1.0', 'all');
    wp_enqueue_style('fontawesome', get_template_directory_uri() . '/css/font-awesome.min.css', array(), '1.0', 'all');
    if (is_front_page()) {
        wp_enqueue_style('flexslider', get_template_directory_uri() . '/plugins/flexslider/flexslider.css', array(), '1.0', 'all');
    }
    wp_enqueue_style('owlcarousel', get_template_directory_uri() . '/plugins/owl-carousel/assets/owl.carousel.min.css', array(), '1.0', 'all');
    wp_enqueue_style('owlcarousel-theme', get_template_directory_uri() . '/plugins/owl-carousel/assets/owl.theme.default.min.css', array(), '1.0', 'all');
    wp_enqueue_style('main', get_template_directory_uri() . '/css/main.css', array(), '1.0', 'all');
    wp_enqueue_style('screen', get_template_directory_uri() . '/css/screen.css', array(), '1.0', 'all');

    //script
    wp_enqueue_script('bootstrap', get_template_directory_uri() . '/js/bootstrap.min.js', array('jquery'), 1.0, true);
    if (is_front_page()) {
        wp_enqueue_script('flexslider', get_template_directory_uri() . '/plugins/flexslider/jquery.flexslider-min.js', array('jquery'), 1.0, true);
    }
    wp_enqueue_script('owlcarousel', get_template_directory_uri() . '/plugins/owl-carousel/owl.carousel.min.js', array('jquery'), 1.0, true);
    
    wp_enqueue_script('script', get_template_directory_uri() . '/js/main.js', array('jquery'), 1.0, true);
}

add_action('wp_enqueue_scripts', 'pl_theme_scripts');

//more theme function
include_once 'include/pl_functions.php';

?>