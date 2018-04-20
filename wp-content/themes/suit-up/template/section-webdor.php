<?php 
	$webdor_id = get_theme_mod('suit_up_webdor_control'); 
	$webdor_post = get_post( $webdor_id );
	$custom_fields = get_post_meta($webdor_id);
	$fields_arr = array($custom_fields['webdor_string_layer_a'][0],$custom_fields['webdor_string_layer_b'][0]);
	if(! empty ( $webdor_post )){
?>

<section id="webdor" class="section-webdor">
	<div class="webdor-green-found">
		<div id="scene1">
			<div class="layer layer1" data-depth="0.3"></div>
			<div class="layer layer3" data-depth="0.35"></div>
			<div class="layer layer4" data-depth="0.50"></div>
			<div class="layer layer5" data-depth="0.65"></div>
			<div class="layer layer6" data-depth="0.80"></div>
			<div class="layer layer7" data-depth="0.99"></div>
			<div class="layer layer8" data-depth="1.19"></div>
			<div class="layer layer9" data-depth="1.39"></div>
			<div class="layer layer10" data-depth="1.99"></div>
			<div class="layer layer11" data-depth="1.99"></div>		
		</div>	
		<div class="layer layer2 animated fadeInDown" data-depth="0.20"></div>		
		<div class="webdor-title-layer">
			<h2 class="animated fadeInUp"><?php echo $webdor_post->post_title ?></h2>
			<div class="webdor-layer-row animated fadeInUp">
				<p><?php echo $fields_arr[0]; ?></p>
				<div class="custom-hr"></div>
				<p><?php echo $fields_arr[1]; ?></p>				
			</div>
			<div class="webdor-layer-row description-row animated fadeInUp">
				<p><?php echo $webdor_post->post_content ?></p>
			</div>	
		</div>			
	</div>	
	<div class="webdor-gray-found">
		<div class="webdor-green-bottom"></div>
		<!-- O Link deve estar fora da scene -->
		<div class="box-btn">
			<a href="#about" class="btn-start animated fadeIn"><span>GET STARTED</span><img src="<?php echo get_template_directory_uri(); ?>/assets/img/btn-start.png"></a>
		</div>
		<div class="limitator">			
			<img src="<?php echo get_template_directory_uri(); ?>/assets/img/scroll-ico.png">		
		</div>				
	</div>
	<div class="webdor-gray-bottom"></div>
</section>

<?php } ?>

