<?php get_header(); ?>

<div class="container">

    <?php woocommerce_breadcrumb(); ?>
    
    <?php
    $cat_top_banner = ot_get_option('cat_top_banner');
    if ($cat_top_banner) {
    ?>
    <div class="cat-top-banner mgb-20">
        <a href="<?php echo ot_get_option('link_top_cat_banner') ?>" target="_blank"><img class="img-responsive" src="<?php echo $cat_top_banner ?>" alt="no banner"></a>
    </div>
    <?php } ?>
    
    <?php 
    wp_nav_menu([
        'theme_location' => 'cat_menu',
        'menu_id' => 'category_menu'
    ]); 
    ?>
    
    <?php if (have_posts()) : ?>

    <div class="top-cat-posts">
        
    </div>
    
    <div class="row">
        <div class="col-sm-8 col-md-9">
            <div class="wrapper mgb-20">
                <div class="items archive-items mgb-20">

                    <?php 
                    $p_index = 0; 
                    $current_time = current_time('timestamp');
                    ?>
                    <?php while (have_posts()) : the_post(); ?>
                    <?php 
                    $p_index++; 
                    $permal_link = get_the_permalink();
                    global $post;
                    ?>

                    <?php if ($p_index == 1) { ?>

                    <div class="item mgb-15">
                        <div class="thumb mgb-15">
                            <a href="<?php echo $permal_link; ?>"><?php the_post_thumbnail('slide', ['class' => 'img-responsive']); ?></a>
                        </div>
                        <div class="item-body">
                            <h3 class="item-title"><a href="<?php echo $permal_link ?>"><?php the_title(); ?></a></h3>
                            <div class="item-desc">
                                <?php echo pl_excerpt($post, 50); ?>
                            </div>
                            <?php include 'include/post_meta.php' ?>
                        </div>
                    </div>

                    <?php } else { ?>

                    <div class="item row">
                        <div class="col-xs-4 col-md-3">
                            <div class="thumb">
                                <a href="<?php echo $permal_link ?>"><?php the_post_thumbnail('medium', ['class' => 'img-responsive']) ?></a>
                            </div>
                        </div>
                        <div class="col-xs-8 col-md-9">
                            <div class="item-body">
                                <h3 class="item-title"><a href="<?php echo $permal_link ?>"><?php the_title(); ?></a></h3>
                                <div class="item-desc">
                                    <?php echo pl_excerpt($post, 30); ?>
                                </div>
                                <?php include 'include/post_meta.php' ?>
                            </div>
                        </div>
                    </div>

                    <?php } ?>

                    <?php endwhile; wp_reset_query(); ?>

                </div>
                
                <?php include 'include/paginate.php' ?>

                <div class="row col-no-padding">
                    <div class="col-sm-4">
                        <div class="border-wrap no-bd-right" style="padding: 6px 5px 3px 5px;">
                            <div class="normal-title text-uppercase">Top sản phẩm bán chạy</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="border-wrap">
                            <?php
                             query_posts([
                                 'post_type' => 'product',
                                 'posts_per_page' => 7
                             ]);
                             if (have_posts()):
                            ?>
                            <ul class="list-inline list-title mgb-0">
                                <?php while(have_posts()) : the_post(); ?>
                                <li><a href="<?php the_permalink() ?>" title="<?php the_title(); ?>"><?php echo wp_trim_words(get_the_title(), 2); ?></a></li>
                                <?php endwhile; wp_reset_query(); ?>
                            </ul>
                            <?php
                            endif;
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-sm-4 col-md-3">
            <div class="wrapper mgb-20">
                <?php get_sidebar(); ?>
            </div>
        </div>
    </div>

    <?php else : ?>

        <h3 class="mgb-15">Không có bài viết nào</h3>

    <?php endif; ?>
        
</div>

<?php get_footer(); ?>