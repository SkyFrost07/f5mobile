
<div class="list-group question-cat-list">
    
    <div class="list-group-item list-group-header">
        <div class="normal-title text-uppercase">Chủ đề quan tâm nhiều</div>
    </div>

    <?php
    $question_cat = get_terms([
        'taxonomy' => 'question_cat',
        'hide_empty' => 0,
        'orderby' => 'count',
        'order' => 'DESC'
    ]);

    $current_cat = get_queried_object();
    ?>

    <?php if ($question_cat) { ?>

        <?php foreach ($question_cat as $term) { ?>
            <a href="<?php echo get_term_link($term, 'question_cat'); ?>" class="list-group-item <?php echo $current_cat->term_id == $term->term_id ? 'active' : '' ?>">
                <h4 class="list-group-item-heading"><?php echo $term->name; ?></h4>
                <p class="list-group-item-text">
                    <?php echo $term->count ?> câu hỏi
                </p>
            </a>
        <?php } ?>

    <?php } ?>

</div>

