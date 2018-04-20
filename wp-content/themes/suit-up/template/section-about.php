<?php 
	$post_id = 30;
	$about_post = get_post( $post_id );
	$custom_fields = get_post_meta($post_id);
	$fields_arr = $custom_fields['about_string_layer'][0];
	if(! empty ( $about_post )){
?>

<section id="about" class="section-about animated">
	<div class="section-content">
		<div class="box-img animated fadeInLeft">
			<div id="scene2">
				<div class="layer layer12" data-depth="0.3"></div>
			</div>
			<!-- <img src="<?php //echo get_template_directory_uri(); ?>/assets/img/apple-b.png"> -->
		</div>		
		<div class="content-row row-title">
			<div id="scene3">
				<div class="layer layer13" data-depth="0.7"></div>
				<div class="layer layer14" data-depth="0.5"></div>
			</div>			
			<h2><?php echo $about_post->post_title ?></h2>
			<p><?php echo $about_post->post_content ?></p>			
			<div class="row-grid">
				<div class="col-border animated fadeIn">
					<span><?php echo $fields_arr ?></span>
					<img src="<?php echo get_template_directory_uri(); ?>/assets/img/layer-border.png">
				</div>
				<div class="row-col animated fadeIn">
					<p><?php echo $about_post->post_excerpt ?></p>
				</div>
			</div>		
		</div>		
	</div>
</section>
<?php } ?>