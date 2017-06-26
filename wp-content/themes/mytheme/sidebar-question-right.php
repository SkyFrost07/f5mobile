<?php

$errorMessage = null;

if (isset($_POST['add_new_post'])) {
    
    if (!$_POST['question_title'] || 
            !$_POST['question_content'] ||
            !$_POST['question_author'] ||
            !$_POST['question_email']) {
        $errorMessage = '<p class="error">Vui lòng điền đầy đủ thông tin!</p>';
    } else {
        $data_post = [
            'post_title' => wp_strip_all_tags($_POST['question_title']),
            'post_content' => $_POST['question_content'],
            'post_type' => 'hoi_dap',
            'post_status' => 'publish'
        ];
        
        $post_id = wp_insert_post($data_post);

        $quesion_cat_id = (int) $_POST['question_cat'];
        wp_set_object_terms($post_id, array($quesion_cat_id), 'question_cat');
        
        add_post_meta($post_id, 'question_author', sanitize_text_field($_POST['question_author']));
        add_post_meta($post_id, 'question_email', sanitize_text_field($_POST['question_email']));
        
        global $wp;
        $current_url = home_url(add_query_arg(array(),$wp->request));
        echo '<script>window.location.href="'. $current_url .'"</script>';
        exit;
    }
}

?>


<form method="post" action="<?php echo $current_url; ?>">
    <button type="button" class="btn btn-block btn-add-post mgb-5">Đặt câu hỏi</button>
    
    <p>Xin quý khách vui lòng gửi câu hỏi viết tiếng Việt có dấu. Và điền đầy đủ thông tin.</p>
    
    <?php if ($errorMessage) {
        echo $errorMessage;
    } ?>
    
    <p><input type="text" name="question_title" class="form-control" required placeholder="Tiêu đề câu hỏi"></p>
    
    <p><input type="text" name="question_author" class="form-control" required placeholder="Họ và tên"></p>
    
    <p><input type="email" name="question_email" class="form-control" required placeholder="Địa chỉ email"></p>
    
    <p>
        <label>Chủ đề</label>
        <?php
        $question_cat = get_terms([
            'taxonomy' => 'question_cat',
            'hide_empty' => 0,
            'orderby' => 'count',
            'order' => 'DESC'
        ]);
        ?>
        <select name="question_cat" class="form-control">
            <?php 
            if($question_cat) { 
                foreach ($question_cat as $cat) {
            ?>
            <option value="<?php echo $cat->term_id ?>"><?php echo $cat->name; ?></option>
            <?php 
                }
            } 
            ?>
        </select>
    </p>
    <p><textarea class="form-control" name="question_content" rows="4" required placeholder="Nội dung câu hỏi"></textarea></p>
    
    <input type="hidden" name="add_new_post" value="1">
    <button type="submit" class="btn btn-block btn-submit-post"><i class="fa fa-send"></i> Gửi câu hỏi</button>
</form>

