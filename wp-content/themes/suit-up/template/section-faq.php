<?php 
	$faq_args = array(
	    'post_type' => 'Faq',
	    'order' => 'ASC'
	);
	$results = get_posts($faq_args);
	if(! empty ( $results )){
?>

<section id="faq" class="section-faq animated">

	<div class="section-content">
		<div class="content-row row-title">
			<h2><p>/Frequently Asked Questions</p><b>Marketing 101</b></h2>
			<p>thegeniusmarketinggroup.com\blog</p>					
		</div>
		<div class="faq-box">
			<?php foreach ($results as $faq) : ?>
				<div class="result">
					<h3><?php echo $faq->post_title; ?></h3>
					<div class="hr"></div>
					<p class="atributes">
						<?php echo $faq->post_content; ?>
					</p>					
				</div>
			<?php endforeach; ?>
		</div>
	</div>
</section>
<?php } ?>