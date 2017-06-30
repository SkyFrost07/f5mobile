<?php

	if (!empty($_SERVER['SCRIPT_FILENAME']) && 'comments.php' == basename($_SERVER['SCRIPT_FILENAME']))
		die ('Please do not load this page directly. Thanks!');

	if ( post_password_required() ) { ?>
		This post is password protected. Enter the password to view comments.
	<?php
		return;
	}
?>

<?php if ( have_comments() ) : ?>
	
        <h2 id="comments" class="medium-title border-title"><span><?php comments_number('Không có bình luận', '1 Bình luận', '% Bình luận' );?></span></h2>

	<div class="navigation">
		<div class="next-posts"><?php previous_comments_link() ?></div>
		<div class="prev-posts"><?php next_comments_link() ?></div>
	</div>

	<ol class="commentlist">
            <?php wp_list_comments(array('avatar_size' => 60, 'comment_reply' => 'Trả lời')); ?>
	</ol>

	<div class="navigation">
		<div class="next-posts"><?php previous_comments_link() ?></div>
		<div class="prev-posts"><?php next_comments_link() ?></div>
	</div>
	
 <?php else : // this is displayed if there are no comments so far ?>

	<?php if ( comments_open() ) : ?>
		<!-- If comments are open, but there are no comments. -->

	 <?php else : // comments are closed ?>
		<p>Comments are closed.</p>

	<?php endif; ?>
	
<?php endif; ?>

<?php if ( comments_open() ) : ?>

<div id="respond">

        <h2 class="normal-title"><?php comment_form_title( 'Bình luận bài viết', 'Trả lời %s' ); ?></h2>

	<div class="cancel-comment-reply">
		<?php cancel_comment_reply_link(); ?>
	</div>

	<?php if ( get_option('comment_registration') && !is_user_logged_in() ) : ?>
		<p>You must be <a href="<?php echo wp_login_url( get_permalink() ); ?>">logged in</a> to post a comment.</p>
	<?php else : ?>

	<form action="<?php echo get_option('siteurl'); ?>/wp-comments-post.php" method="post" id="commentform">

		<?php if ( is_user_logged_in() ) : ?>

			<p>Đang đăng nhập với <a href="<?php echo get_option('siteurl'); ?>/wp-admin/profile.php"><?php echo $user_identity; ?></a>. <a href="<?php echo wp_logout_url(get_permalink()); ?>" title="Log out of this account">Đăng xuất &raquo;</a></p>

		<?php else : ?>

                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <input type="text" name="author" id="author" value="<?php echo esc_attr($comment_author); ?>" class="form-control" <?php if ($req) echo "aria-required='true'"; ?> placeholder="Họ tên" />
                            </div>

                            <div class="col-sm-6 form-group">
                                <input type="text" name="email" id="email" value="<?php echo esc_attr($comment_author_email); ?>" class="form-control"  <?php if ($req) echo "aria-required='true'"; ?> placeholder="Email" />
                            </div>
                        </div>

		<?php endif; ?>

		<!--<p>You can use these tags: <code><?php echo allowed_tags(); ?></code></p>-->

                <div class="form-group">
                    <textarea name="comment" id="comment" rows="4" class="form-control" placeholder="Bình luận"></textarea>
		</div>

		<div>
                    <input name="submit" type="submit" id="submit" class="btn btn-main" style="padding: 12px 30px;" value="Gửi đi" />
                    <?php comment_id_fields(); ?>
		</div>
		
		<?php do_action('comment_form', $post->ID); ?>

	</form>

	<?php endif; // If registration required and not logged in ?>
	
</div>

<?php endif; ?>
