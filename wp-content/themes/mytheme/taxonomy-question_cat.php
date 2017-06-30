<?php

/* 
 * Template name: Trang hỏi đáp
 */

get_header();
?>

<div class="container">
    
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
                    <div class="list-group question-cat-list questions-list">
                        <div class="list-group-item list-group-header">
                            <div class="normal-title text-uppercase">Câu hỏi mới nhất</div>
                        </div>
                        <?php
                        if (have_posts()):
                            $current_time = current_time('timestamp');
                        ?>
                    
                        <?php while(have_posts()):the_post(); ?>
                        
                        <a href="<?php the_permalink(); ?>" class="list-group-item">
                            <div class="media">
                                <div class="media-left pull-left thumb">
                                    <?php the_post_thumbnail('thumbnail'); ?>
                                </div>
                                <div class="media-body">
                                    <div class="small-title"><?php the_title(); ?></div>
                                    <div class="item-meta">
                                        <span class="author"><i><?php the_field('question_author') ?></i></span> | 
                                        <span class="time"><?php echo human_time_diff(get_the_time('U'), $current_time) ?> trước</span>
                                        <?php if (get_field('question_answer')) { ?>
                                        | <span class="comment-count">Đã có trả lời</span>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                        </a>
                        
                        <?php endwhile; ?>
                        
                        <?php else: ?>
                        <h4 class="pdt-15 normal-title">Chưa có câu hỏi nào</h4>
                        <?php endif; ?>
                    
                    </div>
                    
                    <?php woocommerce_pagination(); ?>
                </div>
            </div>
        </div>
        
        <div class="col-sm-4 col-md-3">
            <div class="mgb-20">
                <?php get_sidebar('question-right') ?>
            </div>
        </div>
    </div>
    
</div>

<?php get_footer(); ?>

