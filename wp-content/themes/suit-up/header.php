<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	<?php require 'font-face.php'; ?>
	<meta charset="UTF-8">
	<?php wp_head(); ?>
</head>

<body class="animated fadeIn" id="body">
<div class="loading">
    <div class="img-box animated slow infinite flash">
        <img class="" src="<?php echo get_theme_mod( 'suit_up_theme_logo' ); ?>">
    </div>
</div>


<div class="suit-up-landing-page">

<div class="header">
	<div class="header-box">
		<div class="logo-box"><?php get_template_part('template/logo'); ?></div>
		<div class="menu-box"><?php get_template_part('template/menu'); ?></div>		
	</div>
</div>

<div class="stick-header"></div>