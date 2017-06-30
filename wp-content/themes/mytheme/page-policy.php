<?php 
/*
 * Template name: Trang chính sách
 */

get_header(); 
?>

<div class="container">
    
    <?php woocommerce_breadcrumb(); ?>
    
    <?php
    
    if (have_posts()) : while (have_posts()) : the_post();
    
    ?>
    
        <h2 class="single-title mgb-20"><?php the_title(); ?></h2>
        
        <div class="wrapper mgb-50">

         <h3 class="normal-title text-uppercase text-center mgb-20 pdt-15">BẠN ĐANG QUAN TÂM ĐẾN THÔNG TIN GÌ?</h3>
        
        <?php 
        $policies = new WP_Query([
                'post_type' => 'chinh_sach',
                'posts_per_page' => -1
        ]);
        
        if ($policies->have_posts()) :
        ?>
        
        <div class="row mgb-20">
            <div class="col-md-8 col-md-offset-2">
                <div class="policies_list row items">

                <?php while ($policies->have_posts()) : $policies->the_post(); ?>

                    <div class="policy-item col-sm-6 item">
                        <a class="inner media" href="<?php the_permalink(); ?>">
                            <div class="media-right pull-right thumb">
                                <?php the_post_thumbnail('thumbnail', ['class' => 'img-responsive']); ?>
                            </div>
                            <div class="media-body">
                                <h4 class="item-title media-heading text-uppercase"><?php the_title(); ?></h4>
                            </div>
                        </a>
                    </div>

                <?php endwhile; wp_reset_query(); ?>
                    
                </div>
            </div>
        </div>
         
        <?php endif; ?>

        </div>
    
    <?php
    
    endwhile;
    endif;
    
    ?>
    
</div>

<?php get_footer(); ?>