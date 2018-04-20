<?php 
	$friends_args = array(
	    'post_type' => 'Friend',
	    'order' => 'ASC',
		'post_status' => 'publish',
		'numberposts' => -1
	);
	$results = get_posts($friends_args);
    if(! empty ( $results )){
?>

<section id="clients" class="section-friends animated">
	<div class="section-content">
		<div class="content-row row-title">
			<h2><p>/Clients and Friends</p></h2>					
		</div>
		<div class="friends-box">
			<?php foreach ($results as $friends) : ?>
				<div class="friend">
					<a href="<?php echo $friends->post_excerpt; ?>" target="_blank"><img src="<?php echo get_the_post_thumbnail_url($friends->ID, 'full') ?>"></a>
				</div>
			<?php endforeach; ?>
		</div>
	</div>
</section>

<?php } ?>