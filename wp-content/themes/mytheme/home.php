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
                <?php endif; wp_reset_query(); ?>
            </div>
        </div>
        
        <div class="col-md-3" id="hom_news">
            <h3 class="tit-title text-uppercase">
                <a href="<?php echo home_url('chuyen-muc/blog'); ?>">
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
                        <a href="#"><img class="img-responsive" src="<?php echo ot_get_option('bn_shop_logo') ?>" alt="no banner"></a>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading text-uppercase"><a href="#"><?php echo ot_get_option('bn_shop_name') ?></a></h3>
                        <div class="info-desc"><?php echo ot_get_option('bn_shop_description'); ?></div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-3">
                <div class="banner-image">
                    <a href="#"><img class="img-responsive" src="<?php echo ot_get_option('banner_shop_right'); ?>" alt="no banner"></a>
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
            <?php pl_featured_products(); ?>
        </div>
        
        <?php
        $prodHomeCats = ot_get_option('home_prod_cats');
        if ($prodHomeCats) {
            foreach ($prodHomeCats as $itemCat) {
                $prodCatId = $itemCat['product_cat_id'];
                $classBanner = '';
                if ($itemCat['banner_image']) {
                    $classBanner = 'has-banner';
                }
                if ($prodCatId) {
                    $productCat = get_term($prodCatId, 'product_cat');
                    $termName = $itemCat['title'];
                    if (!$termName) {
                        $termName = $productCat->name;
                    }
                    $termChilds = get_terms('product_cat', [
                        'parent' => $prodCatId,
                        'orderby' => 'count',
                        'order' => 'DESC'
                    ]);
                    $have_posts = false;
                ?>
                
                <div class="cat-box tab-box <?php echo $classBanner; ?>">
                    <div class="box-head border-head">
                        <div class="row">
                            <div class="col-sm-3 title-col">
                                <h3 class="box-title text-uppercase">
                                    <span><?php echo $termName ?></span>
                                </h3>
                            </div>
                            <?php if ($termChilds) { ?>
                            <div class="col-sm-9 sub-cat-col text-right">
                                <ul class="nav nav-tabs cat-tabs">
                                    <?php foreach ($termChilds as $index => $term) { ?>
                                        <li class="<?php echo ($index == 0 ? 'active' : '') ?>">
                                            <a href="#tab_cat_<?= $term->term_id ?>" data-toggle="tab"><?php echo $term->name ?></a>
                                        </li>
                                    <?php } ?>
                                </ul>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="box-content">
                        <?php if ($itemCat['banner_image']) { ?>
                        <div class="row">
                            <div class="pl-xs-50 pl-md-20 banner-col mgb-20">
                                <a href="#"><img class="img-responsive" src="<?= $itemCat['banner_image'] ?>" alt="banner" title="banner"></a>
                            </div>
                            <div class="pl-md-80 product-col">
                        <?php } ?>
                                <div class="tab-content">
                                    <?php foreach ($termChilds as $index => $term) { ?>
                                        <div class="tab-pane <?= $index == 0 ? 'active' : '' ?>" id="tab_cat_<?= $term->term_id ?>">
                                            <?php
                                            $products = new WP_Query([
                                                'post_type' => 'product',
                                                'posts_per_page' => ($itemCat['product_per_page'] ? $itemCat['product_per_page'] : 8),
                                                'tax_query' => [
                                                    [
                                                        'taxonomy' => 'product_cat',
                                                        'field' => 'term_id',
                                                        'terms' => [$term->term_id]
                                                    ]
                                                ]
                                            ]);
                                            if ($products->have_posts()):
                                                if (!$have_posts) {
                                                    $have_posts = true;
                                                }
                                            ?>
                                            <div class="row items row-items product-row-items">
                                                <?php while ($products->have_posts()) : $products->the_post(); ?>
                                                    <div class="col-xs-6 col-md-3 item">
                                                        <?php include 'include/product_item.php' ?>
                                                    </div>
                                                <?php endwhile; wp_reset_query(); ?>
                                            </div>
                                            <?php
                                            endif;
                                            ?>
                                        </div>
                                    <?php } ?>
                                </div>
                                <div class="more-box">
                                    <?php if ($have_posts) { ?>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <a class="btn btn-block pl-btn-more text-uppercase" href="<?php echo get_term_link($productCat); ?>">Xem tất cả <i class="fa fa-caret-right"></i></a>
                                        </div>
                                    </div>
                                    <?php } else { ?>
                                    <a class="btn pl-btn-more">Hiện tại chưa có sản phẩn cho danh mục này</a>
                                    <?php } ?>
                                </div>
                        <?php if ($itemCat['banner_image']) { ?>
                            </div>
                        </div>
                        <?php } ?>
                    </div>
                </div>

                <?php
                } else if ($itemCat['banner_image']) {
                    ?>
                    <div class="banner-box mgb-25">
                        <a href="<?php isset($itemCat['banner_image_link']) ? $itemCat['banner_image_link'] : '' ?>">
                            <img class="img-responsive" src="<?= $itemCat['banner_image'] ?>" alt="banner" title="banner">
                        </a>
                    </div>
                    <?php
                }
            }
        }
        ?>
        
        <div class="mix-box pl-box">
            <div class="row">
                <div class="col-md-6">

                    <?php
                    $prodGridCats = ot_get_option('home_prod_cats_grid');
                    $accessory_term = get_term_by('slug', 'phu-kien', 'product_acce');
                    $accessory_link = '';
                    $accessory_name = 'Phụ kiện';
                    if ($accessory_term) {
                        $accessory_link = get_term_link($accessory_term);
                        $accessory_name = $accessory_term->name;
                    }
                    ?>
                    <div class="cat-box">
                        <h3 class="box-title border-title"><a href="<?php echo $accessory_link; ?>"><span><?php echo $accessory_name; ?></span></a></h3>
                        <?php if ($prodGridCats) { ?>
                        <?php
                        $prodGridCatIds = [];
                        $saleNumbers = [];
                        foreach ($prodGridCats as $itemCat) {
                            array_push($prodGridCatIds, $itemCat['product_acce_id']);
                            $saleNumbers[$itemCat['product_acce_id']] = $itemCat['sale_number'];
                        }
                        $prodGridCatObjs = get_terms([
                            'taxonomy' => 'product_acce',
                            'hide_empty' => 0,
                            'include' => $prodGridCatIds
                        ]);
                        if ($prodGridCatObjs) {
                        ?>
                            <div class="box-content">
                                <div class="row items row-items cat-items relative-items center-items">
                                    <?php foreach ($prodGridCatObjs as $term) { ?>
                                    <?php
                                    $termLink = get_term_link($term, 'product_acce');
                                    $termName = $term->name;
                                    ?>
                                        <div class="col-xs-6 item no-bg">
                                            <div class="inner no-padding">
                                                <div class="thumb">
                                                    <a href="<?php echo $termLink ?>"><img class="img-responsive" src="<?= get_field('pl_term_image', $term); ?>" alt="no image" title="<?php echo $termName ?>"></a>
                                                </div>
                                                <div class="item-body">
                                                    <div class="inner-body">
                                                        <?php if ($saleNumbers[$term->term_id]) { ?>
                                                            <div class="sale-number"><?php echo $saleNumbers[$term->term_id] ?></div>
                                                        <?php } ?>
                                                        <h3 class="item-title text-uppercase"><a href="<?php echo $termLink ?>"><?php echo $termName ?></a></h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>
                        <?php 
                            }
                        } 
                        ?>
                    </div>

                </div>
                
                <?php 
                $prodListCats = ot_get_option('hom_prod_cats_list'); 
                if ($prodListCats) {
                    $prodListCatIds = [];
                    $arrTermName = [];
                    $arrPerpage = [];
                    foreach ($prodListCats as $itemCat) {
                        $prodListCatIds[] = $itemCat['prod_acce_id'];
                        $arrTermName[$itemCat['prod_acce_id']] = $itemCat['title'];
                        $arrPerpage[$itemCat['prod_acce_id']] = $itemCat['product_per_page'] ? $itemCat['product_per_page'] : 2;
                    }
                    $prodListCatObjs = get_terms([
                        'taxonomy' => 'product_acce',
                        'hide_empty' => 0,
                        'include' => $prodListCatIds
                    ]);
                    if ($prodListCatObjs) {
                    ?>
                    <div class="col-md-6">

                        <div class="row">
                            <?php foreach ($prodListCatObjs as $term) { ?>
                            <?php
                            $termLink = get_term_link($term);
                            $termName = $arrTermName[$term->term_id];
                            if (!$termName) {
                                $termName = $term->name;
                            }
                            ?>
                            <div class="col-sm-6">

                                <div class="mgb-20">
                                    <h3 class="box-title border-title">
                                        <span><a href="<?php echo get_term_link($term); ?>"><?php echo $termName; ?></a></span>
                                    </h3>
                                    <?php 
                                    $products = new WP_Query([
                                        'post_type' => 'product',
                                        'posts_per_page' => $arrPerpage[$term->term_id],
                                        'tax_query' => [
                                            [
                                                'taxonomy' => 'product_acce',
                                                'field' => 'term_id',
                                                'terms' => [$term->term_id]
                                            ]
                                        ]
                                    ]);
                                    if ($products->have_posts()):
                                    ?>
                                    <div class="items col-items media-items product-items">
                                        <?php while ($products->have_posts()) : $products->the_post(); ?>
                                        <?php
                                        $prodLink = get_the_permalink();
                                        ?>
                                            <div class="item no-bg">
                                                <div class="media inner">
                                                    <div class="media-left pull-left thumb">
                                                        <a href="<?= $prodLink ?>">
                                                            <?php woocommerce_template_loop_product_thumbnail(); ?>
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <h4 class="media-heading item-title"><a href="<?= $prodLink ?>"><?php the_title(); ?></a></h4>
                                                        <?php woocommerce_template_loop_price(); ?>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endwhile; ?>
                                    </div>
                                    <?php endif; $products->reset_postdata(); ?>
                                </div>

                            </div>
                            <?php } ?>
                        </div>

                    </div>
                    <?php }
                }
                ?>
            </div>
        </div>

        <?php 
        $homCat = ot_get_option('home_cats', 1);
        $catChilds = get_terms([
            'taxonomy' => 'category',
            'hide_empty' => 0,
            'parent' => $homCat,
            'number' => 4
        ]);
        ?>
        <div class="pl-box cat-news-box">
            <h3 class="box-title border-title"><span><?php echo get_term_field('name', $homCat); ?></span></h3>
            <div class="box-content">
                <?php if ($catChilds) { ?>
                <div class="items row row-items relative-items with-padding">
                    <?php foreach ($catChilds as $cat) { ?>
                    <?php
                    $catLink = get_term_link($cat);
                    ?>
                        <div class="col-xs-6 col-md-3 item thumb-item">
                            <div class="inner no-padding">
                                <div class="thumb">
                                    <a href="<?= $catLink ?>">
                                        <img src="<?= get_field('pl_term_image', $cat) ?>" class="img-responsive" title="<?php echo $cat->name ?>" alt="no image">
                                    </a>
                                </div>
                                <div class="item-body">
                                    <h4 class="item-title text-uppercase"><a href="<?= $catLink ?>"><?php echo $cat->name ?></a></h4>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
                <?php } ?>
            </div>
        </div>

    </div>
</div>

<?php get_footer() ?>
