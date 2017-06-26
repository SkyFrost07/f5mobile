<h3 class="medium-title">Phụ kiện điện thoại, máy tinh bảng</h3>

<?php
$accessories = get_terms([
    'taxonomy' => 'product_acce',
    'hide_empty' => 0,
    'orderby' => 'count',
    'order' => 'DESC'
]);
$current_acce = get_queried_object();

if ($accessories) :
?>

<ul class="list-unstyled" id="accessories_menu">
    <?php foreach ($accessories as $term) { ?>
    <li <?php echo ($current_acce->term_id == $term->term_id ? 'class="active"' : '') ?>><a href="<?php echo get_term_link($term) ?>"><?php echo $term->name ?></a></li>
    <?php } ?>
</ul>

<?php
endif;
