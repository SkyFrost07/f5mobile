        </section>

        <footer>
            <div id="footer_menu">
                <div class="container">
                    <?php wp_nav_menu(['theme_location' => 'footer']); ?>
                </div>
            </div>

            <div class="footer-cols">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 footer-col">
                            <h3 class="foot-title"><a href="<?php echo home_url(); ?>"><img class="img-responsive" src="<?= ot_get_option('pl_logo'); ?>"></a></h3>
                            <p class="ft-desc mgb-25">
                                <?php echo ot_get_option('footer_desc'); ?>
                            </p>
                            <?php 
                            $socialItems = ot_get_option('social_items');
                            if ($socialItems) {
                            ?>
                            <div class="socials-row row">
                                <?php foreach ($socialItems as $item) { ?>
                                <div class="col-xs-6">
                                    <a class="social-item" target="_blank" href="<?php echo $item['link'] ?>">
                                        <i class="fa <?php echo $item['icon'] ?>"></i> 
                                        <span class="text-uppercase"><?php echo $item['title'] ?></span>
                                    </a>
                                </div>
                                <?php } ?>
                            </div>
                            <?php
                            }
                            ?>
                        </div>
                        <div class="col-md-3">
                            <h3 class="foot-title text-uppercase">Đăng ký nhận tin</h3>
                            <p class="ft-desc">
                                Hãy điền email và đăng ký nhận bản tin từ Shop name. Chúng tôi sẽ gửi các thông tin khuyến mại qua email cho khách hàng!
                            </p>

                            <form>
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" name="" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Email*</label>
                                    <input type="email" name="" class="form-control">
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-default bg-default no-border">Subscribe</button>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-2">
                            <h3 class="foot-title text-uppercase">Hỗ trợ khách hàng</h3>
                            <?php 
                            $suportPageIds = ot_get_option('footer_menu_support');
                            $supportPages = new WP_Query([
                                'post_type' => 'page',
                                'post__in' => $suportPageIds
                            ]);
                            if ($supportPages->have_posts()):
                            ?>
                            <ul class="list-unstyled">
                                <?php while ($supportPages->have_posts()) : $supportPages->the_post(); ?>
                                <li><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></li>
                                <?php endwhile; ?>
                            </ul>
                            <?php endif; $supportPages->reset_postdata(); ?>
                        </div>
                        <div class="col-md-3">
                            <h3 class="foot-title text-uppercase">Đi đến shop name</h3>
                            <?php $addressList = ot_get_option('address_list'); ?>
                            <?php if ($addressList) { ?>
                            <div class="address-list">
                                <?php foreach ($addressList as $idx => $addr) { ?>
                                <div class="address-item">
                                    <div><strong>Cơ sở <?= $idx + 1 ?></strong>: <?= $addr['title'] ?></div>
                                    <div class="hotline text-center">
                                        <a class="view-field" href="tel:<?= $addr['hotline'] ?>"><i class="fa fa-phone"></i> <?= $addr['hotline'] ?></a>
                                    </div>
                                </div>
                                <?php } ?>
                            </div>
                            <?php } ?>
                            <div>
                                <p><i>Xem shop trên bản đồ</i></p>
                                <button type="button" class="view-field field-lg"><i class="fa fa-map"></i> Xem bản đồ</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="end-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5">
                            <?php echo ot_get_option('end_footer_desc'); ?>
                        </div>
                        <div class="col-md-4 text-center">
                            <div class="payments-list">
                                <a href=""><img class="img-responsive" src="<?= ot_get_option('banner_payment'); ?>" alt="payment icon"></a>
                            </div>
                        </div>
                        <div class="col-md-3 text-right">
                            <?php echo ot_get_option('coppyright'); ?>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        
        <?php echo ot_get_option('facebook_sdk_script') ?>

        <?php wp_footer(); ?>
    </body>
</html>