<?php

$sidebar_cat_opts = ot_get_option('sidebar_cat_ids');
if ($sidebar_cat_opts) {

    $cat_options = [];
    $sidebar_cat_ids = [];
    foreach ($sidebar_cat_opts as $key => $item) {
        $cat_options[$item['cat_id']]['title'] = $item['title'];
        $cat_options[$item['cat_id']]['per_page'] = $item['per_page'];
        array_push($sidebar_cat_ids, $item['cat_id']);
    } 
    
    $sidebar_cats = get_terms([
        'taxonomy' => 'category',
        'hide_empty' => 0,
        'include' => $sidebar_cat_ids
    ]);
    
    if ($sidebar_cats) {
        foreach ($sidebar_cats as $cat) {
            $box_title = isset($cat_options[$cat->term_id]) ? $cat_options[$cat->term_id]['title'] : $cat->name;
            ?>
            <div class="sidbar-cat-box mgb-20">
                <h3 class="normal-title"><?php echo $box_title; ?></h3>
                <?php
                query_posts([
                    'post_type' => 'post',
                    'cat' => $cat->term_id,
                    'posts_per_page' => isset($cat_options[$cat->term_id]) ? $cat_options[$cat->term_id]['per_page'] : 5
                ]);
                if (have_posts()):
                ?>
                <div class="items media-items">
                    <?php while(have_posts()) : the_post(); ?>
                    <div class="item media">
                        <div class="thumb media-left pull-left">
                            <a href="<?php the_permalink() ?>"><?php the_post_thumbnail('thumbnail', ['class' => 'img-responsive']); ?></a>
                        </div>
                        <div class="item-body media-body">
                            <h4 class="item-title"><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></h4>
                        </div>
                    </div>
                    <?php endwhile; wp_reset_query(); ?>
                </div>
                <div class="more-box mgt-10">
                    <a href="<?php echo get_category_link($cat); ?>">Xem thêm những <?php echo $box_title ?> khác</a>
                </div>
                <?php
                endif;
                ?>
            </div>
            <?php
        }
    }
}

?>