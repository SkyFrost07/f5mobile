<?php
global $wp_query;

if ($wp_query->max_num_pages <= 1) {
    return;
}
?>
<nav class="pl-paginate">
    <?php
    echo paginate_links(array(
        'base' => esc_url_raw(str_replace(999999999, '%#%', esc_url(get_pagenum_link(999999999)))),
        'format' => '',
        'add_args' => false,
        'current' => max(1, get_query_var('paged')),
        'total' => $wp_query->max_num_pages,
        'prev_text' => '&larr;',
        'next_text' => '&rarr;',
        'type' => 'list',
        'end_size' => 3,
        'mid_size' => 3,
    ));
    ?>
</nav>
