<?php get_header(); ?>

<div class="container">
    <?php if(have_posts()): ?>
    
    <?php 
    woocommerce_breadcrumb();
    
    wp_nav_menu([
        'theme_location' => 'cat_menu',
        'menu_id' => 'category_menu'
    ]); 
    ?>
    
    <div class="row">
        <div class="col-sm-8 col-md-9">
            <div class="wrapper mgb-20">
                <?php while(have_posts()): the_post(); ?>
                
                <h2 class="single-title"><?php the_title(); ?></h2>
                <?php include 'include/post_meta.php'; ?>
                
                <div class="post_content">
                    <?php the_content(); ?>
                </div>
                
                <div class="mgb-15">
                    <?php 
                    if(function_exists("kk_star_ratings")) : 
                        echo kk_star_ratings(); 
                    endif; 
                    ?>
                </div>
                
                <div class="post-sharing">
                    <?php include 'include/sharing.php'; ?>
                </div>
                
                <?php endwhile; ?>
            </div>
            
            
            <?php
            $post_cats = get_the_category();
            $first_cat_id = null;
            if ($post_cats) {
                $first_cat_id = $post_cats[0]->term_id;
            }
            $related_posts = new WP_Query([
                'post_type' => 'post',
                'posts_per_page' => 3,
                'post__not_in' => [get_the_ID()],
                'category__in' => [$first_cat_id]
            ]);

            if ($related_posts->have_posts()):
            ?>
            <div class="wrapper mgb-20">
                <h3 class="normal-title border-title"><span>Tin tức liên quan</span></h3>
                
                <div class="items row row-items related-posts">
                    <?php while($related_posts->have_posts()) : $related_posts->the_post() ?>
                    
                    <div class="col-xs-6 col-md-4 item">
                        <?php $permal_link = get_the_permalink(); ?>
                        <div class="inner">
                            <div class="thumb">
                                <a href="<?php echo $permal_link ?>"><?php the_post_thumbnail('medium', ['class' => 'img-responsive']); ?></a>
                            </div>
                            <h4 class="item-title"><a href="<?php echo $permal_link ?>"><?php the_title(); ?></a></h4>
                        </div>
                    </div>
                    
                    <?php endwhile; wp_reset_postdata(); ?>
                </div>
            </div>
            <?php 
            endif;
            ?>
            
            <div class="wrapper mgb-20">
                <?php comments_template(); ?>
            </div>
        </div>
            
        <div class="col-sm-4 col-md-3">
            <div class="wrapper mgb-20">
                <?php get_sidebar(); ?>
            </div>
        </div>
    </div>
    <?php else : ?>
    
    <h3>Không tìm thấy bài viết</h3>
    
    <?php endif ?>
</div>

<?php get_footer(); ?>