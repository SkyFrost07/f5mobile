<?php
$permalLink = get_the_permalink();
$title = get_the_title();
?>

<div class="inner">
    <div class="thumb">
        <a href="<?php echo $permalLink ?>">
            <?php woocommerce_template_loop_product_thumbnail() ?>
        </a>
    </div>
    <div class="item-body">
        <h3 class="item-title"><a href="<?php echo $permalLink ?>" title="<?php echo $title ?>"><?php echo wp_trim_words($title, TITLE_MAX_LEN, '...'); ?></a></h3>
            <?php woocommerce_template_loop_price(); ?>
    </div>
</div>


