<?php 
	$post_id = 34;
	$seo_post = get_post( $post_id );
	$custom_fields = get_post_meta($post_id);
	$cf_title = $custom_fields['seo_string_layer_title'][0];
	$cf_content = $custom_fields['seo_string_layer_content'][0];
	if(! empty ( $seo_post )){
?>

<section id="seo" class="section-seo animated">
	<div class="section-box">
		<div class="scene-seo-box animated fadeIn">
			<div id="scene5">
				<div class="layer layer17" data-depth="0.5"></div>				
			</div>			
		</div>
		<div class="section-col first-col animated fadeInLeft">
			<h2 class="seo-title"><?php echo $seo_post->post_title; ?></h2>
			<p class="seo-content"><?php echo $seo_post->post_content; ?></p>
			<p class="seo-excerpt"><?php echo $seo_post->post_excerpt; ?></p>
			<h3 class="seo-cf-title"><?php echo $cf_title; ?></h3>
			<p class="seo-cf-content"><?php echo $cf_content; ?></p>
		</div>
		<div class="section-col second-col animated fadeInUp">
			<div class="board">			
				<img src="<?php echo get_template_directory_uri(); ?>/assets/img/seo-shape-b.png"  class="board-frame frame1 animated fadeIn">
				<img src="<?php echo get_template_directory_uri(); ?>/assets/img/seo-shape-a.png"  class="board-frame frame2 animated fadeIn">
				<img src="<?php echo get_template_directory_uri(); ?>/assets/img/seo-shape-c.png"  class="board-frame frame3 animated fadeIn">						
				<div class="board-group group1">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/img/seo-shape-e.png"  class="board-frame frame4">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/img/seo-shape-f.png"  class="board-frame frame5">					
				</div>
				<div class="board-group group2">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/img/seo-shape-g.png"  class="board-frame frame6">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/img/seo-shape-d.png"  class="board-frame frame7">
				</div>
			</div>
		</div>			

	</div>
</section>

<?php } ?>