<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php if (is_search()) { ?>
       <meta name="robots" content="noindex, nofollow" /> 
    <?php } ?>
       <link rel="shortcut icon" href="<?php echo ot_get_option('_favicon'); ?>">

    <title><?php pl_head_title(); ?></title>

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900&amp;subset=latin-ext,vietnamese" rel="stylesheet">

    <link rel="shortcut icon" href="/favicon.ico">
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>">
    <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
    <?php if ( is_singular() ) wp_enqueue_script('comment-reply'); ?>

    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
    <header>
        <div id="head_block">
            <div class="container">
                <div class="row">
                    <div class="col-xs-4 col-md-3 logo-col">
                        <h1 class="logo">
                            <strong class="hidden"><?php bloginfo('name'); ?></strong>
                            <a href="<?php echo home_url(); ?>"><img src="<?php echo ot_get_option('pl_logo'); ?>" class="img-responsive" title="" alt="Logo"></a>
                        </h1>
                    </div>
                    <div class="col-xs-8 col-md-9 head-col">
                        <?php 
                        $headerBlocks = ot_get_option('header_block');
                        ?>
                        <?php if ($headerBlocks) { ?>
                        <div class="row head-info">
                            <?php 
                            foreach ($headerBlocks as $index => $item) { 
                                if ($index > 3) {
                                    break;
                                }
                            ?>
                            <div class="col-xs-6 col-md-3 info-col">
                                <div class="inner <?php echo $index == 3 ? 'pl-dropdown' : '' ?>">
                                    <a href="<?php echo $item['link'] ?>" class="media" target="_blank">
                                        <div class="media-left pull-left">
                                            <i class="fa <?php echo str_replace('http://', '', $item['image']) ?>"></i>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading"><?php echo $item['title'] ?></h4>
                                            <span><?php echo $item['description'] ?> <?= $index == 3 ? '<i class="fa fa-caret-down"></i>' : '' ?></span>
                                        </div>
                                    </a>
                                    <?php if ($index == 3) { ?>
                                        <?php
                                        $addressList = ot_get_option('address_list');
                                        if ($addressList) {
                                        ?>
                                        <div class="pl-dropdown-menu dropdown-menu address-box">
                                            <?php foreach ($addressList as $addr) { ?>
                                            <div class="address-item">
                                                <div><i class="fa fa-map-marker"></i> <?php echo $addr['title'] ?></div>
                                                <div><a href="tel:<?php echo $addr['hotline'] ?>"><i class="fa fa-phone"></i> Hotline: <?php echo $addr['hotline'] ?></a></div>
                                            </div>
                                            <?php } ?>
                                        </div>
                                        <?php } ?>
                                    <?php } ?>
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
        <!-- end head block -->
        <div id="top-menu">
            <div class="container">
                <div class="row">
                    <div class="col-xs-3 col-sm-4 col-md-5 col-lg-3 menu-col">
                        <a href="<?php echo home_url('san-pham'); ?>" class="btn pl-btn-menu hidden-xs">Iphone - Ipad - Phụ kiện <i class="fa fa-caret-down"></i></a>
                        <button class="btn pl-btn-menu visible-xs"><span class="fa fa-bars"></span> Menu</button>
                    </div>
                    <div class="col-xs-9 col-sm-8 col-md-7 col-lg-9 search-col">
                        <form method="get" action="<?php echo esc_url( home_url( '/' ) ); ?>">
                            <div class="input-group search-group">
                                <input type="text" name="s" class="form-control" placeholder="Nhập tên sản phẩm bạn muốn tìm">
                                <span class="input-group-btn">
                                    <input type="hidden" name="post_type" value="product" />
                                    <button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>
                <div id="cl_menu">
                    <div class="row">
                        <div class="col-md-6 menu-col">
                            <?php wp_nav_menu(['theme_location' => 'primary']); ?>
                        </div>
                        <div class="col-md-6 banner-menu hidden-xs">
                            <a href="#" target="_blank"><img class="img-responsive" src="<?= ot_get_option('banner_main_menu'); ?>" alt="banner"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section id="main_body">