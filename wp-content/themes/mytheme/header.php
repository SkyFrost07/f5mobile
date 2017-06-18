<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php if (is_search()) { ?>
       <meta name="robots" content="noindex, nofollow" /> 
    <?php } ?>

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
                            <a href="#"><img src="<?= get_template_directory_uri() ?>/images/logo.png" class="img-responsive" title="" alt="Logo"></a>
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
                                        <div class="pl-dropdown-menu dropdown-menu address-box">
                                            <div class="address-item">
                                                <div><i class="fa fa-map-marker"></i> aaa Cầu Giấy - Hà Nội</div>
                                                <div><a href="tel:0000ds"><i class="fa fa-phone"></i> Hotline: 09482342342</a></div>
                                            </div>
                                            <div class="address-item">
                                                <div><i class="fa fa-map-marker"></i> bbb Cầu Giấy - Hà Nội</div>
                                                <div><a href="tel:0000ds"><i class="fa fa-phone"></i> Hotline: 09482342342</a></div>
                                            </div>
                                        </div>
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
                        <button class="btn pl-btn-menu hidden-xs">Iphone - Ipad - Phụ kiện <i class="fa fa-caret-down"></i></button>
                        <button class="btn pl-btn-menu visible-xs"><span class="fa fa-bars"></span> Menu</button>
                    </div>
                    <div class="col-xs-9 col-sm-8 col-md-7 col-lg-9 search-col">
                        <div class="input-group search-group">
                            <input type="text" name="" class="form-control" placeholder="Nhập tên sản phẩm bạn muốn tìm">
                            <span class="input-group-btn">
                                <button class="btn btn-default"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </div>
                </div>
                <div id="cl_menu">
                    <div class="row">
                        <div class="col-md-6 menu-col">
                            <?php wp_nav_menu(); ?>
                        </div>
                        <div class="col-md-6 banner-menu hidden-xs">
                            <a href="#" target="_blank"><img class="img-responsive" src="<?= get_template_directory_uri() ?>/images/bg-menu-2-1.png"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section id="main_body">