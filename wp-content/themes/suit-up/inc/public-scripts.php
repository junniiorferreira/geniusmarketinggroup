<?php 

add_action( 'wp_enqueue_scripts', 'animate_css' );

function animate_css() {
	wp_register_style( 'animate', get_template_directory_uri() . '/assets/css/animate.css' );
	wp_enqueue_style( 'animate' );
}

add_action( 'wp_enqueue_scripts', 'register_css' );

function register_css() {
	wp_register_style( 'styles', get_template_directory_uri() . '/assets/css/main.css' );
	wp_enqueue_style( 'styles' );
}

add_action( 'wp_enqueue_scripts', 'register_jquery' );

function register_jquery() {
    wp_enqueue_script( 'jquery3', get_template_directory_uri() . '/assets/js/jquery-3.3.1.min.js', array( 'jquery' ), '1.0.0', true );
}

add_action( 'wp_enqueue_scripts', 'register_js' );

function register_js() {
    wp_enqueue_script( 'scripts', get_template_directory_uri() . '/assets/js/main.js', array( 'jquery' ), '1.0.0', true );
}

add_action( 'wp_enqueue_scripts', 'parallax_js' );

function parallax_js() {
    wp_enqueue_script( 'parallax', get_template_directory_uri() . '/assets/js/parallax.js', array( 'jquery' ), '1.0.0', true );
}

add_action( 'wp_enqueue_scripts', 'parallax_min' );

function parallax_min() {
    wp_enqueue_script( 'parallax', get_template_directory_uri() . '/assets/js/parallax.min.js', array( 'jquery' ), '1.0.0', true );
}

add_action( 'wp_enqueue_scripts', 'waypoints_js' );

function waypoints_js() {
    wp_enqueue_script( 'waypoints', get_template_directory_uri() . '/assets/js/jquery.waypoints.min.js', array( 'jquery' ), '1.0.0', true );
}