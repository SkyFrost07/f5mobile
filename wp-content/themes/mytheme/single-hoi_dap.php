<?php
get_header();
?>

<div class="container">
    
    <?php if (have_posts()): ?>
    
    <?php while(have_posts()): the_post(); pl_add_post_view(); ?>
    
    <?php woocommerce_breadcrumb(); ?>
    
    <div class="row">
        <div class="col-sm-8 col-md-9">
            <?php include 'include/question_searchform.php'; ?>
            
            <div class="bd-bt-box mgb-15"></div>
            
            <div class="row">
                <div class="col-md-4">
                    <div class="mgb-20">
                        <?php get_sidebar('question'); ?>
                    </div>
                </div>
                
                <div class="col-md-8">
                    <div class="wrapper mgb-20">
                        
                        <div class="single-header">
                            <div class="media">
                                <div class="media-left pull-left">
                                    <img class="img-responsive" src="<?php echo get_template_directory_uri() ?>/images/default_avatar.png">
                                </div>
                                <div class="media-body">
                                    <h4 class="normal-title media-heading"><?php the_field('question_author'); ?></h4>
                                    <div class="item-meta">
                                        <span class="author"><?php the_field('question_author') ?></span> | 
                                        <span class="time"><?php echo human_time_diff(get_the_time('U'), $current_time) ?> trước</span> | 
                                        <span class="view-count"><?php echo pl_get_post_view(); ?> lượt xem</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <h2 class="question-title"><?php the_title(); ?></h2>
                        
                        <div class="post_content question_content mgb-15">
                            <?php the_content(); ?>
                        </div>
                        
                        <?php
                        $question_answer = get_field('question_answer');
                        if ($question_answer) {
                        ?>
                        
                        <div class="answer_box mgb-20">
                            <p class="answer-title"><i>Trả lời:</i></p>
                            
                            <div class="answer_content">
                                <?php echo $question_answer; ?>
                            </div>
                        </div>
                        
                        <?php } ?>
                        
                        <div class="rating-box mgb-20">
                            <?php 
                            if(function_exists("kk_star_ratings")) : 
                                echo kk_star_ratings(); 
                            endif; 
                            ?>
                        </div>
                        
                        <div class="comment-box">
                            <?php comments_template(); ?>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-sm-4 col-md-3">
            <div class="mgb-20">
                <?php get_sidebar('question-right') ?>
            </div>
        </div>
    </div>
    
    <?php endwhile; ?>
    
    <?php else: ?>
    <p class="normal-title">Không tìm thấy bài viết</p>
    <?php endif; ?>
    
</div>

<?php get_footer(); ?>

