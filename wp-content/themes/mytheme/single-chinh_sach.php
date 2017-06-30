<?php get_header(); ?>

<div class="container">
    <?php if(have_posts()): ?>
    
    <?php 
    woocommerce_breadcrumb();
    ?>
    
    <div class="row">
        <div class="col-md-9">
            <div class="mgb-20">
                <?php while(have_posts()): the_post(); ?>
                
                <h2 class="single-title mgb-20"><?php echo pl_special_title(); ?></h2>
                
                <div class="post_content mgb-20">
                    <?php the_content(); ?>
                </div>
                
                <div class="normal-title"><a href="<?php echo home_url('chinh-sach'); ?>">Xem thêm chính sách của chúng tôi</a></div>
                
                <?php endwhile; ?>
            </div>
        </div>
    </div>
    <?php else : ?>
    
    <h3>Không tìm thấy trang</h3>
    
    <?php endif ?>
</div>

<?php get_footer(); ?>