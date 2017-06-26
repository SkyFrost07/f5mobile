<?php
if (!isset($current_time)) {
    $current_time = current_time('timestamp');
}
?>

<?php if (is_single()) { ?>
<div class="item-meta single-meta">
    <span class="author"><i class="fa fa-user"></i> <?php the_author(); ?></span> | 
    <span class="time"><i class="fa fa-calendar"></i> <?php the_time('d-m-Y'); ?></span> | 
    <?php $cats = get_the_category(); ?>
    <?php if ($cats) { $size_cats = count($cats); $last_cat = $cats[$size_cats - 1]; ?>
    <span class="single-cats"><i class="fa fa-folder"></i> <a href="<?php echo get_category_link($last_cat) ?>"><?php echo $last_cat->name; ?></a></span>
    <?php } ?>
</div>
<?php } else { ?>
<div class="item-meta">
    <span class="author"><i class="fa fa-user"></i> <?php the_author(); ?></span> | 
    <span class="time"><i class="fa fa-calendar"></i> <?php echo human_time_diff(get_the_time('U'), $current_time) ?></span> | 
    <span class="comment-count"><i class="fa fa-comment"></i> <span class="num"><?php comments_number(0, 1); ?></span></span>
</div>
<?php } ?>

