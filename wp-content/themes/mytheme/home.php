<?php
/* 
 * Template name: Home page
 */
?>

<?php get_header(); ?>

<div class="container mgb-20">
    <div class="row mgb-15">
        <div class="col-md-9">
            <div class="main-slider flexslider">
                <?php 
                $sliders = new WP_Query([
                    'post_type' => 'slider',
                    'posts_per_page' => -1,
                    'orderby' => 'meta_value_num',
                    'meta_key' => 'sort_order',
                    'order' => 'ASC'
                ]); 
                ?>
                <?php if ($sliders->have_posts()): ?>
                <ul class="slides">
                    <?php while($sliders->have_posts()) : $sliders->the_post(); ?>
                        <li>
                            <a href="<?php echo get_field('target_link') ?>" target="_blank">
                                <?php the_post_thumbnail('slide', ['class' => 'img-responsive']); ?>
                            </a>
                        </li>
                    <?php endwhile; ?>
                </ul>
                <?php endif; ?>
            </div>

            <div class="main-carousel flexslider">
                <?php if ($sliders->have_posts()): ?>
                <ul class="slides">
                    <?php while ($sliders->have_posts()) : $sliders->the_post(); ?>
                        <li class="text-center">
                            <div class="slide-title"><?php the_title(); ?></div>
                        </li>
                    <?php endwhile; ?>
                </ul>
                <?php endif; $sliders->reset_postdata(); ?>
            </div>
        </div>
        <div class="col-md-3" id="hom_news">
            <h3 class="tit-title text-uppercase">
                <a href="#">
                    <strong><i class="fa fa-newspaper-o"></i> Tin tức</strong>
                    <span>Xem tiếp</span>
                </a>
            </h3>
            <div class="items col-items news-items">
                <?php
                $newsPosts = new WP_Query([
                    'post_type' => 'post',
                    'posts_per_page' => 5
                ]);
                $newPostIdx = 0;
                ?>
                <?php if ($newsPosts->have_posts()) : while ($newsPosts->have_posts()) : $newsPosts->the_post(); ?>
                <?php 
                $permalLInk = get_the_permalink();
                if ($newPostIdx == 0) { 
                ?>
                <div class="item first-item">
                    <div class="inner">
                        <div class="thumb">
                            <a href="<?php echo $permalLInk ?>"><?php the_post_thumbnail('medium', ['class' => 'img-responsive']); ?></a>
                        </div>
                        <div class="item-body">
                            <h3 class="item-title"><a href="<?php echo $permalLInk ?>"><?php the_title(); ?></a></h3>
                        </div>
                    </div>
                </div>
                <?php } else { ?>
                    <div class="item">
                        <div class="item-body">
                            <h3 class="item-title"><a href="<?php echo $permalLInk ?>"><?php the_title(); ?></a></h3>
                        </div>
                    </div>
                <?php } ?>
                <?php 
                $newPostIdx++; 
                endwhile; endif; $newsPosts->reset_postdata(); 
                ?>
            </div>
        </div>
    </div>

    <div class="banner-box">
        <div class="row">
            <div class="col-sm-8 col-md-9">
                <div class="banner-info banner-media media">
                    <div class="media-left pull-left">
                        <a href="#"><img class="img-responsive" src="<?= get_template_directory_uri() ?>/images/square-logo.png"></a>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading text-uppercase"><a href="#">Shop name - Cầu Giấy, Hà Nội</a></h3>
                        <div class="info-desc">
                            “Chúng tôi tạo nên Môi trường mua hàng đặc biệt thân thiện – Giá hấp dẫn nhất thị trường và Yên tâm về mọi mặt cho tất cả các khách hàng của mình.” - ABC, TNHH ABC
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-3">
                <div class="banner-image">
                    <a href="#"><img class="img-responsive" src="<?= get_template_directory_uri() ?>/images/banners/1-2.jpg"></a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="bg-gray">
    <div class="container pdt-30">
        <div class="related-product-box cat-box">
            <h3 class="box-title border-title text-uppercase">
                <span>Sản phẩm hot</span>
            </h3>
            <div class="row-items items product-row-items slider-items owl-carousel owl-theme">
                <?php for ($i = 0; $i < 4; $i++) { ?>
                    <div class="item">
                        <div class="inner">
                            <div class="thumb">
                                <a href="#"><img class="img-responsive" src="<?= get_template_directory_uri() ?>/images/products/medium.png"></a>
                            </div>
                            <div class="item-body">
                                <h3 class="item-title"><a href="#">Iphon 6 plus 16G GOLD chưa active (CPO)</a></h3>
                                <div class="item-price">
                                    <div class="sale-price">8.490.000 đ</div>
                                    <div class="regular-price">9.490.000 đ</div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>

        <div class="cat-box tab-box has-banner">
            <div class="box-head border-head">
                <div class="row">
                    <div class="col-sm-3 title-col">
                        <h3 class="box-title text-uppercase">
                            <span>Iphone quốc tế</span>
                        </h3>
                    </div>
                    <div class="col-sm-9 sub-cat-col text-right">
                        <ul class="nav nav-tabs cat-tabs">
                            <?php for ($i = 0; $i < 4; $i++) { ?>
                                <li class="<?php echo ($i == 0 ? 'active' : '') ?>"><a href="#tab<?= $i ?>" data-toggle="tab">Tab <?= $i ?></a></li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="box-content">
                <div class="row">
                    <div class="pl-xs-50 pl-md-20 banner-col mgb-20">
                        <a href="#"><img class="img-responsive" src="<?= get_template_directory_uri() ?>/images/banners/banner.png"></a>
                    </div>
                    <div class="pl-md-80 product-col">
                        <div class="tab-content">
                            <?php for ($i = 0; $i < 4; $i++) { ?>
                                <div class="tab-pane <?= $i == 0 ? 'active' : '' ?>" id="tab<?= $i ?>">
                                    <div class="row items row-items product-row-items">
                                        <?php $length = ($i % 2) ? 8 : 4; ?>
                                        <?php for ($j = 0; $j < $length; $j++) { ?>
                                            <div class="col-xs-6 col-md-3 item">
                                                <div class="inner">
                                                    <div class="thumb">
                                                        <a href="#"><img class="img-responsive" src="<?= get_template_directory_uri() ?>/images/products/medium.png"></a>
                                                    </div>
                                                    <div class="item-body">
                                                        <h3 class="item-title"><a href="#">Iphon 6 plus 16G GOLD chưa active (CPO)</a></h3>
                                                        <div class="item-price">
                                                            <div class="regular-price">9.490.000</div>
                                                            <div class="sale-price">8.490.000</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="more-box">
                            <div class="row">
                                <div class="col-sm-3">
                                    <a class="btn btn-block pl-btn-more text-uppercase" href="#">Xem tất cả <i class="fa fa-caret-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="banner-box mgb-25">
            <a href="#">
                <img class="img-responsive" src="<?= get_template_directory_uri() ?>/images/banners/images.jpg">
            </a>
        </div>

        <div class="cat-box tab-box has-banner">
            <div class="box-head border-head">
                <div class="row">
                    <div class="col-sm-3 title-col">
                        <h3 class="box-title text-uppercase"><span>Iphone quốc tế</span></h3>
                    </div>
                    <div class="col-sm-9 sub-cat-col">
                        <ul class="nav nav-tabs cat-tabs">
                            <?php for ($i = 0; $i < 4; $i++) { ?>
                                <li class="<?php echo ($i == 0 ? 'active' : '') ?>"><a href="#tab<?= $i ?>" data-toggle="tab">Tab <?= $i ?></a></li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="box-content">
                <div class="tab-content">
                    <?php for ($i = 0; $i < 4; $i++) { ?>
                        <div class="tab-pane <?= $i == 0 ? 'active' : '' ?>" id="tab<?= $i ?>">
                            <div class="row items row-items product-row-items">
                                <?php for ($j = 0; $j < 8; $j++) { ?>
                                    <div class="pl-xs-50 pl-md-33 pl-lg-20 item">
                                        <div class="inner">
                                            <div class="thumb">
                                                <a href="#"><img class="img-responsive" src="<?= get_template_directory_uri() ?>/images/products/medium.png"></a>
                                            </div>
                                            <div class="item-body">
                                                <h3 class="item-title"><a href="#">Iphon 6 plus 16G GOLD chưa active (CPO)</a></h3>
                                                <div class="item-price">
                                                    <div class="regular-price">9.490.000</div>
                                                    <div class="sale-price">8.490.000</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>

        <div class="mix-box pl-box">
            <div class="row">
                <div class="col-md-6">

                    <div class="cat-box">
                        <h3 class="box-title border-title"><a href="#"><span>Phụ kiện</span></a></h3>
                        <div class="box-content">
                            <div class="row items row-items cat-items relative-items">
                                <?php for ($i = 0; $i < 4; $i++) { ?>
                                    <div class="col-xs-6 item no-bg">
                                        <div class="inner no-padding">
                                            <div class="thumb">
                                                <a href="#"><img class="img-responsive" src="<?= get_template_directory_uri() ?>/images/cats/phu-kien-4.png"></a>
                                            </div>
                                            <div class="item-body">
                                                <div class="sale-number">-20%</div>
                                                <h3 class="item-title text-uppercase"><a href="#">Gậy tự sướng</a></h3>
                                            </div>
                                        </div>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-3">

                    <div class="cat-box">
                        <h3 class="box-title border-title"><span>Củ sạc</span></h3>
                        <div class="items col-items media-items product-items">
                            <?php for ($i = 0; $i < 3; $i++) { ?>
                                <div class="item no-bg">
                                    <div class="media inner">
                                        <div class="media-left pull-left thumb">
                                            <a href="#"><img src="<?= get_template_directory_uri() ?>/images/products/sac-ipad-350x350.png"></a>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading item-title"><a href="#">Củ sạc ipad</a></h4>
                                            <div class="price-box">
                                                <div class="regular-price">300.000 d</div>
                                                <div class="sale-price">280.000 d</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                    </div>

                </div>
                <div class="col-md-3">

                    <div class="cat-box">
                        <h3 class="box-title border-title"><span>Củ sạc</span></h3>
                        <div class="items col-items media-items">
                            <?php for ($i = 0; $i < 3; $i++) { ?>
                                <div class="item no-bg">
                                    <div class="media inner">
                                        <div class="media-left pull-left thumb">
                                            <a href="#"><img src="<?= get_template_directory_uri() ?>/images/products/sac-ipad-350x350.png"></a>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading item-title"><a href="#">Củ sạc ipad</a></h4>
                                            <div class="price-box">
                                                <div class="regular-price">300.000 d</div>
                                                <div class="sale-price">280.000 d</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="pl-box cat-news-box">
            <h3 class="box-title border-title"><span>Tin tức công nghệ</span></h3>
            <div class="box-content">
                <div class="items row row-items relative-items with-padding">
                    <?php for ($i = 0; $i < 4; $i++) { ?>
                        <div class="col-xs-6 col-md-3 item thumb-item">
                            <div class="inner no-padding">
                                <div class="thumb">
                                    <a href="#"><img src="<?= get_template_directory_uri() ?>/images/posts/block-tin-tuc3.png" class="img-responsive"></a>
                                </div>
                                <div class="item-body">
                                    <h4 class="item-title text-uppercase"><a href="#">Review Sản phẩm</a></h4>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>

    </div>
</div>

<?php get_footer() ?>
