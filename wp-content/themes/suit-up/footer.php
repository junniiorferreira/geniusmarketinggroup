<?php 
	$social_args = array(
	    'post_type' => 'Social',
	    'order' => 'ASC',
		'post_status' => 'publish',
		'numberposts' => -1
	);
	$results = get_posts($social_args);
?>

<footer>
	<div class="footer-layer">
		<img src="<?php echo get_template_directory_uri(); ?>/assets/img/shape-u.png">
	</div>
	<p class="top-btn"><a href="#"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/top-btn.png"></a></p>
	<section>
		<div class="footer-col footer-logo-col">
			<?php get_template_part('template/flogo'); ?>
		</div>
		<div class="footer-col footer-menu-col">
			<ul>
				<li><a href="#about">About Us</a></li>
				<li><a href="#seo">Digital Marketing/SEO Optimization</a></li>
				<li><a href="#design">Web-Page Design/Graphic Artistr</a></li>
				<li><a href="#marketing">Market Research/Market Analysis</a></li>
				<li><a href="#faq">Marketing 101</a></li>																
			</ul>
		</div>
		<div class="footer-col footer-newslatter-col">
			<div class="newsletter">
				<h3>SUBSCRIBE TO OUR NEWSLETTER</h3>
				<?php echo do_shortcode('[contact-form-7 id="138" title="Newsletter"]') ?>
			</div>
			<div class="social-links">
				<h3>FOLLOW US ON</h3>
				<ul>
				<?php foreach ($results as $social) : ?>
					<li><a href="<?php echo $social->post_excerpt; ?>" target="_blank"><img class="social" src="<?php echo get_the_post_thumbnail_url($social->ID, 'full') ?>"></a></li>
				<?php endforeach; ?>
				</ul>
			</div>
		</div>				
	</section>
	<p>Copyright © 2018, The Genius Marketing Group</p>
</footer>
<?php wp_footer(); ?>
</div>
</body>
</html>