<form class="cat-top-search single-top-search" method="get" action="<?php echo home_url(); ?>">
    <div class="form-group row">
        <div class="col-sm-9 mgb-5">
            <input type="hidden" name="post_type" value="hoi_dap" />
            <input class="form-control" name="s" type="text" value="<?php echo isset($s) ? $s : '' ?>" placeholder="Tìm kiếm câu hỏi">
            <i class="icon fa fa-search"></i>
        </div>
        <div class="col-sm-3">
            <button type="submit" style="border-radius: 5px; font-size: 1.5rem;" class="btn btn-block text-uppercase">Tìm kiếm</button>
        </div>
    </div>
</form>

<div class="row">
    <div class="col-sm-4">
        <h2 class="normal-title">
        <?php 
        if (is_tax()) {
            single_term_title();
        } else if (is_search()) {
            echo 'Kết quả tìm kiếm: ' . wp_specialchars($s);
        } else {
            echo 'Hỏi đáp';
        }
        ?>
        </h2>
    </div>
    <div class="col-sm-8">
        <?php
        $top_term = get_terms([
            'taxonomy' => 'product_cat',
            'orderby' => 'count',
            'order' => 'DESC',
            'number' => 5
        ]);
        if ($top_term):
            ?>
            <div class="list-title" style="font-size: 1.2rem;">
                <span>Top tìm kiếm:</span>
                <?php foreach ($top_term as $idx => $term): ?>
                    <a style="font-size: 1.2rem;" href="<?php echo get_term_link($term, 'product_cat'); ?>" title="<?php $term->name ?>"><?php echo wp_trim_words($term->name, 5); echo ($idx + 1 < count($top_term) ? ', ' : '') ?></a>
            <?php endforeach; ?>
            </div>
            <?php
        endif;
        ?>
    </div>
</div>
