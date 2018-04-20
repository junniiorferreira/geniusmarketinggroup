<?php 
	$post_id = 38;
	$seo_post = get_post( $post_id );
	$custom_fields = get_post_meta($post_id);
	$cf_item_list_a = $custom_fields['cf_item_list_a'][0];
	$cf_item_list_b = $custom_fields['cf_item_list_b'][0];
	$cf_item_list_c = $custom_fields['cf_item_list_c'][0];
	if(! empty ( $seo_post )){
?>

<section id="design" class="section-design animated">
	<div class="scene-design-box animated fadeIn">
		<div id="scene6">
			<div class="layer layer18" data-depth="0.1"></div>
		</div>			
	</div>	
	<div class="section-box">
		<div class="section-col second-col animated fadeInUp">
			<div class="board-design"></div>
		</div>
		<div class="section-col first-col animated fadeInRight">
			<h2 class="design-title"><?php echo $seo_post->post_title; ?></h2>
			<p class="design-content"><?php echo $seo_post->post_content; ?></p>
			<p class="design-excerpt"><?php echo $seo_post->post_excerpt; ?></p>
			<div class="design-list">
				<p><img src="<?php echo get_template_directory_uri(); ?>/assets/img/ico-list-a.png"><?php echo $cf_item_list_a; ?></p>
				<p><img src="<?php echo get_template_directory_uri(); ?>/assets/img/list-style-b.png"><?php echo $cf_item_list_b; ?></p>
				<p><img src="<?php echo get_template_directory_uri(); ?>/assets/img/list-style-c.png"><?php echo $cf_item_list_c; ?></p>
			</div>
		</div>
	</div>	
</section>

<?php } ?>