<?php 
	$post_id = 41;
	$mkt_post = get_post( $post_id );
	$bg = get_the_post_thumbnail_url($post_id, 'full');
	$result_args_a = array(
	    'post_type' => 'Marketing',
	    'post__in' => array(49, 46),
	    'order' => 'ASC'
	);
	$results_a = get_posts($result_args_a);
	$result_args_b = array(
	    'post_type' => 'Marketing',
	    'post__in' => array(51, 53, 62),
	    'order' => 'ASC'
	);
	$results_b = get_posts($result_args_b);	
	if(! empty ( $mkt_post )){
?>

<section id="marketing" class="section-mkt animated" style="background:url('<?php echo $bg ?>');background-repeat: no-repeat;">
	<div class="section-box">
<!-- 		<div class="scene-seo-box animated fadeIn">
			<div id="scene4">
				<div class="layer layer16" data-depth="0.5"></div>
				<div class="layer layer17" data-depth="0.5"></div>				
			</div>			
		</div>	 -->	
		<div class="section-col first-col animated fadeInLeft">
			<h2 class="mkt-title"><?php echo $mkt_post->post_title; ?></h2>
			<p class="mkt-content"><?php echo $mkt_post->post_content; ?></p>
			
			<?php if(! empty ( $results_a )){ ?>
    			<div class="mkt-result-box">
        			<?php foreach ($results_a as $post_result) : ?>
        				<div class="result">
        					<img src="<?php echo get_the_post_thumbnail_url($post_result, 'full'); ?>">
        					<h3><?php echo $post_result->post_title; ?></h3>
        					<div class="atributes">
        						<?php echo $post_result->post_content; ?>
        					</div>					
        				</div>
        			<?php endforeach; ?>
    			</div>
    		<?php } ?>
		</div>
		<?php if(! empty ( $results_b )){ ?>
    		<div class="section-col second-col animated fadeInUp">
    			<?php foreach ($results_b as $post_result) : ?>
    				<div class="result">
    					<img src="<?php echo get_the_post_thumbnail_url($post_result, 'full'); ?>">
    					<h3><?php echo $post_result->post_title; ?></h3>
    					<div class="atributes">
    						<?php echo $post_result->post_content; ?>
    					</div>					
    				</div>
    			<?php endforeach; ?>
    		</div>
        <?php } ?>    		
		<div class="scene-mkt-box animated fadeIn">
			<div id="scene10">
				<div class="layer layer19" data-depth="0.5"></div>
			</div>			
		</div>					
	</div>
</section>
<?php } ?>