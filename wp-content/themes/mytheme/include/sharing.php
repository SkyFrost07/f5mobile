<?php
global $wp;
$current_url = home_url(add_query_arg(array(),$wp->request));
?>

<div class="fb-like" data-href="<?php echo $current_url; ?>" data-width="120" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="true"></div>

<script src="https://apis.google.com/js/platform.js" async defer>
  {lang: 'vi'}
</script>

<div class="g-plus" data-action="share" data-width="120" data-href="<?php echo $current_url; ?>"></div>

