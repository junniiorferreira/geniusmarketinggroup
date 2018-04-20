<?php 

/**
* Create Logo Setting and Upload Control
*/
function suit_up_new_customizer_settings($wp_customize) {

	// get posts for movie
	$args = array(
		'posts_per_page'   => -1,
		'offset'           => 0,
		'category'         => '',
		'category_name'    => '',
		'orderby'          => 'date',
		'order'            => 'DESC',
		'include'          => '',
		'exclude'          => '',
		'meta_key'         => '',
		'meta_value'       => '',
		'post_type'        => 'webdor',
		'post_mime_type'   => '',
		'post_parent'      => '',
		'author'	   => '',
		'author_name'	   => '',
		'post_status'      => 'publish',
		'suppress_filters' => true 
	);

	$posts_array = get_posts( $args );

	$webdor_list = array();

	foreach ($posts_array as $value) {
		$webdor_list[$value->ID] = $value->post_title;
	}


	// Add header Section
	$wp_customize->add_section('suit_up_header', array(
		'title' => 'Header',
		'description' => '',
		'priority' => 10,
		'section' => 'title_tagline',
	));

	$wp_customize->add_section('suit_up_section_webdor', array(
		'title' => 'Webdor Section',
		'description' => '',
		'priority' => 12,
		'section' => 'title_tagline',
	));

	// add a setting for the site logo
	$wp_customize->add_setting('suit_up_webdor_control');

	$wp_customize->add_control(
	    new WP_Customize_Control(
	        $wp_customize,
	        'about_list',
	        array(
	            'label'          => __( 'Select your default webdor post', 'suit-up' ),
	            'section'        => 'suit_up_section_webdor',
	            'settings'       => 'suit_up_webdor_control',
	            'type'           => 'select',
	            'choices'        => $webdor_list,
	        )
	    )
	);

	// add a setting for the site logo
	$wp_customize->add_setting('suit_up_theme_logo');
	
	// Add a control to upload the logo
	$wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'suit_up_theme_logo',
	array(
		'label' => 'Site Logo',
		'section' => 'suit_up_header',
		'settings' => 'suit_up_theme_logo',
	) ) );

}

add_action('customize_register', 'suit_up_new_customizer_settings');

// Add Footer settings
function suit_up_footer_settings($wp_customize) {

	// Add footer Section
	$wp_customize->add_section('suit_up_footer', array(
		'title' => 'Footer',
		'description' => '',
		'priority' => 12,
		'section' => 'title_tagline',
	));

	// add a setting for the site logo
	$wp_customize->add_setting('suit_up_footer_logo');
	// Add a control to upload the logo
	$wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'suit_up_footer_logo',
	array(
	'label' => 'Footer Logo',
	'section' => 'suit_up_footer',
	'settings' => 'suit_up_footer_logo',
	) ) );
	
}
add_action('customize_register', 'suit_up_footer_settings');

// End Footer Settings


// Remove links on control painel
add_action('admin_menu','remove_default_post_type');

function remove_default_post_type() {
	remove_menu_page('edit.php');
}

add_action('admin_menu','remove_default_post_type_media');

function remove_default_post_type_media() {
	remove_menu_page('upload.php');
}

add_action('admin_menu','remove_default_post_type_pages');

function remove_default_post_type_pages() {
	remove_menu_page('edit.php?post_type=page');
}

add_action('admin_menu','remove_default_post_type_comments');

function remove_default_post_type_comments() {
	remove_menu_page('edit-comments.php');
}

// Add Section Footer
