<?php 
/*
* Creating a function to create our CPT
*/
 
add_theme_support( 'post-thumbnails' );

 
function type_webdor() {
 
// Set UI labels for Custom Post Type
    $labels = array(
        'name'                => _x( 'Webdor', 'Post Type General Name', 'suit-up' ),
        'singular_name'       => _x( 'Webdor', 'Post Type Singular Name', 'suit-up' ),
        'menu_name'           => __( 'Webdor', 'suit-up' ),
        'parent_item_colon'   => __( 'Parent Webdor', 'suit-up' ),
        'all_items'           => __( 'All homes', 'suit-up' ),
        'view_item'           => __( 'View Webdor', 'suit-up' ),
        'add_new_item'        => __( 'Add New Webdor', 'suit-up' ),
        'add_new'             => __( 'Add New', 'suit-up' ),
        'edit_item'           => __( 'Edit Webdor', 'suit-up' ),
        'update_item'         => __( 'Update Webdor', 'suit-up' ),
        'search_items'        => __( 'Search Webdor', 'suit-up' ),
        'not_found'           => __( 'Not Found', 'suit-up' ),
        'not_found_in_trash'  => __( 'Not found in Trash', 'suit-up' )
    );
     
// Set other options for Custom Post Type     
    $args = array(
        'label'               => __( 'Webdor', 'suit-up' ),
        'description'         => __( 'Webdor news and reviews', 'suit-up' ),
        'labels'              => $labels,
        // Features this CPT supports in Post Editor
        'supports'            => array( 'title', 'editor', 'thumbnail', 'excerpt', 'author', 'comments', 'revisions', 'custom-fields', ),
        // You can associate this CPT with a taxonomy or custom taxonomy. 
        'taxonomies'          => array( 'genres' ),
        /* A hierarchical CPT is like Pages and can have
        * Parent and child items. A non-hierarchical CPT
        * is like Posts.
        */ 
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => true,
        'show_in_admin_bar'   => true,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'page',
        'menu_icon'           => 'dashicons-admin-home'
    );
     
    // Registering your Custom Post Type
    register_post_type( 'Webdor', $args );
 
}
 
/* Hook into the 'init' action so that the function
* Containing our post type registration is not 
* unnecessarily executed. 
*/
 
add_action( 'init', 'type_webdor', 0 );


function type_about() {
 
// Set UI labels for Custom Post Type
    $labels = array(
        'name'                => _x( 'About', 'Post Type General Name', 'suit-up' ),
        'singular_name'       => _x( 'About', 'Post Type Singular Name', 'suit-up' ),
        'menu_name'           => __( 'About', 'suit-up' ),
        'parent_item_colon'   => __( 'Parent About', 'suit-up' ),
        'all_items'           => __( 'All Abouts', 'suit-up' ),
        'view_item'           => __( 'View About', 'suit-up' ),
        'add_new_item'        => __( 'Add New About', 'suit-up' ),
        'add_new'             => __( 'Add New', 'suit-up' ),
        'edit_item'           => __( 'Edit About', 'suit-up' ),
        'update_item'         => __( 'Update About', 'suit-up' ),
        'search_items'        => __( 'Search About', 'suit-up' ),
        'not_found'           => __( 'Not Found', 'suit-up' ),
        'not_found_in_trash'  => __( 'Not found in Trash', 'suit-up' ),
    );
     
// Set other options for Custom Post Type     
    $args = array(
        'label'               => __( 'About', 'suit-up' ),
        'description'         => __( 'About news and reviews', 'suit-up' ),
        'labels'              => $labels,
        // Features this CPT supports in Post Editor
        'supports'            => array( 'title', 'editor', 'thumbnail', 'excerpt', 'author', 'comments', 'revisions', 'custom-fields', ),
        // You can associate this CPT with a taxonomy or custom taxonomy. 
        'taxonomies'          => array( 'genres' ),
        /* A hierarchical CPT is like Pages and can have
        * Parent and child items. A non-hierarchical CPT
        * is like Posts.
        */ 
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => true,
        'show_in_admin_bar'   => true,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'page',
        'menu_icon'           => 'dashicons-universal-access-alt'
    );
     
    // Registering your Custom Post Type
    register_post_type( 'About', $args );
 
}
 
/* Hook into the 'init' action so that the function
* Containing our post type registration is not 
* unnecessarily executed. 
*/
 
add_action( 'init', 'type_about', 0 );


function type_seo() {
 
// Set UI labels for Custom Post Type
    $labels = array(
        'name'                => _x( 'Seo', 'Post Type General Name', 'suit-up' ),
        'singular_name'       => _x( 'Seo', 'Post Type Singular Name', 'suit-up' ),
        'menu_name'           => __( 'Seo', 'suit-up' ),
        'parent_item_colon'   => __( 'Parent Seo', 'suit-up' ),
        'all_items'           => __( 'All Seo Posts', 'suit-up' ),
        'view_item'           => __( 'View Seo', 'suit-up' ),
        'add_new_item'        => __( 'Add New Seo', 'suit-up' ),
        'add_new'             => __( 'Add New', 'suit-up' ),
        'edit_item'           => __( 'Edit Seo', 'suit-up' ),
        'update_item'         => __( 'Update Seo', 'suit-up' ),
        'search_items'        => __( 'Search Seo', 'suit-up' ),
        'not_found'           => __( 'Not Found', 'suit-up' ),
        'not_found_in_trash'  => __( 'Not found in Trash', 'suit-up' ),
    );
     
// Set other options for Custom Post Type     
    $args = array(
        'label'               => __( 'Seo', 'suit-up' ),
        'description'         => __( 'Seo news and reviews', 'suit-up' ),
        'labels'              => $labels,
        // Features this CPT supports in Post Editor
        'supports'            => array( 'title', 'editor', 'thumbnail', 'excerpt', 'author', 'comments', 'revisions', 'custom-fields', ),
        // You can associate this CPT with a taxonomy or custom taxonomy. 
        'taxonomies'          => array( 'genres' ),
        /* A hierarchical CPT is like Pages and can have
        * Parent and child items. A non-hierarchical CPT
        * is like Posts.
        */ 
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => true,
        'show_in_admin_bar'   => true,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'page',
        'menu_icon'           => 'dashicons-chart-bar'
    );
     
    // Registering your Custom Post Type
    register_post_type( 'Seo', $args );
 
}
 
/* Hook into the 'init' action so that the function
* Containing our post type registration is not 
* unnecessarily executed. 
*/
 
add_action( 'init', 'type_seo', 0 );

function type_design() {
 
// Set UI labels for Custom Post Type
    $labels = array(
        'name'                => _x( 'Design', 'Post Type General Name', 'suit-up' ),
        'singular_name'       => _x( 'Design', 'Post Type Singular Name', 'suit-up' ),
        'menu_name'           => __( 'Design', 'suit-up' ),
        'parent_item_colon'   => __( 'Parent Design', 'suit-up' ),
        'all_items'           => __( 'All Design Posts', 'suit-up' ),
        'view_item'           => __( 'View Design', 'suit-up' ),
        'add_new_item'        => __( 'Add New Design', 'suit-up' ),
        'add_new'             => __( 'Add New', 'suit-up' ),
        'edit_item'           => __( 'Edit Design', 'suit-up' ),
        'update_item'         => __( 'Update Design', 'suit-up' ),
        'search_items'        => __( 'Search Design', 'suit-up' ),
        'not_found'           => __( 'Not Found', 'suit-up' ),
        'not_found_in_trash'  => __( 'Not found in Trash', 'suit-up' ),
    );
     
// Set other options for Custom Post Type     
    $args = array(
        'label'               => __( 'Design', 'suit-up' ),
        'description'         => __( 'Design news and reviews', 'suit-up' ),
        'labels'              => $labels,
        // Features this CPT supports in Post Editor
        'supports'            => array( 'title', 'editor', 'thumbnail', 'excerpt', 'author', 'comments', 'revisions', 'custom-fields', ),
        // You can associate this CPT with a taxonomy or custom taxonomy. 
        'taxonomies'          => array( 'genres' ),
        /* A hierarchical CPT is like Pages and can have
        * Parent and child items. A non-hierarchical CPT
        * is like Posts.
        */ 
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => true,
        'show_in_admin_bar'   => true,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'page',
        'menu_icon'           => 'dashicons-lightbulb'        
    );
     
    // Registering your Custom Post Type
    register_post_type( 'Design', $args );
 
}
 
/* Hook into the 'init' action so that the function
* Containing our post type registration is not 
* unnecessarily executed. 
*/
 
add_action( 'init', 'type_design', 0 );

function type_marketing() {
 
// Set UI labels for Custom Post Type
    $labels = array(
        'name'                => _x( 'Marketing', 'Post Type General Name', 'suit-up' ),
        'singular_name'       => _x( 'Marketing', 'Post Type Singular Name', 'suit-up' ),
        'menu_name'           => __( 'Marketing', 'suit-up' ),
        'parent_item_colon'   => __( 'Parent Marketing', 'suit-up' ),
        'all_items'           => __( 'All Marketing Posts', 'suit-up' ),
        'view_item'           => __( 'View Marketing', 'suit-up' ),
        'add_new_item'        => __( 'Add New Marketing', 'suit-up' ),
        'add_new'             => __( 'Add New', 'suit-up' ),
        'edit_item'           => __( 'Edit Marketing', 'suit-up' ),
        'update_item'         => __( 'Update Marketing', 'suit-up' ),
        'search_items'        => __( 'Search Marketing', 'suit-up' ),
        'not_found'           => __( 'Not Found', 'suit-up' ),
        'not_found_in_trash'  => __( 'Not found in Trash', 'suit-up' ),
    );
     
// Set other options for Custom Post Type     
    $args = array(
        'label'               => __( 'Marketing', 'suit-up' ),
        'description'         => __( 'Marketing news and reviews', 'suit-up' ),
        'labels'              => $labels,
        // Features this CPT supports in Post Editor
        'supports'            => array( 'page-attributes', 'title', 'editor', 'thumbnail', 'excerpt', 'author', 'comments', 'revisions', 'custom-fields', ),
        // You can associate this CPT with a taxonomy or custom taxonomy. 
        'taxonomies'          => array( 'genres' ),
        /* A hierarchical CPT is like Pages and can have
        * Parent and child items. A non-hierarchical CPT
        * is like Posts.
        */ 
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => true,
        'show_in_admin_bar'   => true,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'page',
        'menu_icon'           => 'dashicons-megaphone'          
    );
     
    // Registering your Custom Post Type
    register_post_type( 'Marketing', $args );
 
}
 
/* Hook into the 'init' action so that the function
* Containing our post type registration is not 
* unnecessarily executed. 
*/
 
add_action( 'init', 'type_marketing', 0 );

function type_faq() {
 
// Set UI labels for Custom Post Type
    $labels = array(
        'name'                => _x( 'Faq', 'Post Type General Name', 'suit-up' ),
        'singular_name'       => _x( 'Faq', 'Post Type Singular Name', 'suit-up' ),
        'menu_name'           => __( 'Faq', 'suit-up' ),
        'parent_item_colon'   => __( 'Parent Faq', 'suit-up' ),
        'all_items'           => __( 'All Faqs Posts', 'suit-up' ),
        'view_item'           => __( 'View Faq', 'suit-up' ),
        'add_new_item'        => __( 'Add New Faq', 'suit-up' ),
        'add_new'             => __( 'Add New', 'suit-up' ),
        'edit_item'           => __( 'Edit Faq', 'suit-up' ),
        'update_item'         => __( 'Update Faq', 'suit-up' ),
        'search_items'        => __( 'Search Faq', 'suit-up' ),
        'not_found'           => __( 'Not Found', 'suit-up' ),
        'not_found_in_trash'  => __( 'Not found in Trash', 'suit-up' ),
    );
     
// Set other options for Custom Post Type     
    $args = array(
        'label'               => __( 'Faq', 'suit-up' ),
        'description'         => __( 'Faq news and reviews', 'suit-up' ),
        'labels'              => $labels,
        // Features this CPT supports in Post Editor
        'supports'            => array( 'page-attributes', 'title', 'editor', 'thumbnail', 'excerpt', 'author', 'comments', 'revisions', 'custom-fields', ),
        // You can associate this CPT with a taxonomy or custom taxonomy. 
        'taxonomies'          => array( 'genres' ),
        /* A hierarchical CPT is like Pages and can have
        * Parent and child items. A non-hierarchical CPT
        * is like Posts.
        */ 
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => true,
        'show_in_admin_bar'   => true,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'page',
        'menu_icon'           => 'dashicons-media-text'             
    );
     
    // Registering your Custom Post Type
    register_post_type( 'Faq', $args );
 
}
 
/* Hook into the 'init' action so that the function
* Containing our post type registration is not 
* unnecessarily executed. 
*/
 
add_action( 'init', 'type_faq', 0 );

function type_friend() {
 
// Set UI labels for Custom Post Type
    $labels = array(
        'name'                => _x( 'Friend', 'Post Type General Name', 'suit-up' ),
        'singular_name'       => _x( 'Friend', 'Post Type Singular Name', 'suit-up' ),
        'menu_name'           => __( 'Friends', 'suit-up' ),
        'parent_item_colon'   => __( 'Parent Friend', 'suit-up' ),
        'all_items'           => __( 'All Friends Posts', 'suit-up' ),
        'view_item'           => __( 'View Friend', 'suit-up' ),
        'add_new_item'        => __( 'Add New Friend', 'suit-up' ),
        'add_new'             => __( 'Add New', 'suit-up' ),
        'edit_item'           => __( 'Edit Friend', 'suit-up' ),
        'update_item'         => __( 'Update Friend', 'suit-up' ),
        'search_items'        => __( 'Search Friend', 'suit-up' ),
        'not_found'           => __( 'Not Found', 'suit-up' ),
        'not_found_in_trash'  => __( 'Not found in Trash', 'suit-up' ),
    );
     
// Set other options for Custom Post Type     
    $args = array(
        'label'               => __( 'Friend', 'suit-up' ),
        'description'         => __( 'Friend news and reviews', 'suit-up' ),
        'labels'              => $labels,
        // Features this CPT supports in Post Editor
        'supports'            => array( 'page-attributes', 'title', 'editor', 'thumbnail', 'excerpt', 'author', 'comments', 'revisions', 'custom-fields', ),
        // You can associate this CPT with a taxonomy or custom taxonomy. 
        'taxonomies'          => array( 'genres' ),
        /* A hierarchical CPT is like Pages and can have
        * Parent and child items. A non-hierarchical CPT
        * is like Posts.
        */ 
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => true,
        'show_in_admin_bar'   => true,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'page',
        'menu_icon'           => 'dashicons-smiley'         
    );
     
    // Registering your Custom Post Type
    register_post_type( 'Friend', $args );
 
}
 
/* Hook into the 'init' action so that the function
* Containing our post type registration is not 
* unnecessarily executed. 
*/
 
add_action( 'init', 'type_friend', 0 );

// 

function type_social() {
 
// Set UI labels for Custom Post Type
    $labels = array(
        'name'                => _x( 'Social', 'Post Type General Name', 'suit-up' ),
        'singular_name'       => _x( 'Social', 'Post Type Singular Name', 'suit-up' ),
        'menu_name'           => __( 'Socials', 'suit-up' ),
        'parent_item_colon'   => __( 'Parent Social', 'suit-up' ),
        'all_items'           => __( 'All Socials Posts', 'suit-up' ),
        'view_item'           => __( 'View Social', 'suit-up' ),
        'add_new_item'        => __( 'Add New Social', 'suit-up' ),
        'add_new'             => __( 'Add New', 'suit-up' ),
        'edit_item'           => __( 'Edit Social', 'suit-up' ),
        'update_item'         => __( 'Update Social', 'suit-up' ),
        'search_items'        => __( 'Search Social', 'suit-up' ),
        'not_found'           => __( 'Not Found', 'suit-up' ),
        'not_found_in_trash'  => __( 'Not found in Trash', 'suit-up' ),
    );
     
// Set other options for Custom Post Type
    $args = array(
        'label'               => __( 'Social Network', 'suit-up' ),
        'description'         => __( 'Social news and reviews', 'suit-up' ),
        'labels'              => $labels,
        // Features this CPT supports in Post Editor
        'supports'            => array( 'page-attributes', 'title', 'editor', 'thumbnail', 'excerpt', 'author', 'comments', 'revisions', 'custom-fields', ),
        // You can associate this CPT with a taxonomy or custom taxonomy. 
        'taxonomies'          => array( 'genres' ),
        /* A hierarchical CPT is like Pages and can have
        * Parent and child items. A non-hierarchical CPT
        * is like Posts.
        */ 
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => true,
        'show_in_admin_bar'   => true,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'page',
        'menu_icon'           => 'dashicons-networking'         
    );
     
    // Registering your Custom Post Type
    register_post_type( 'Social', $args );
 
}
 
/* Hook into the 'init' action so that the function
* Containing our post type registration is not 
* unnecessarily executed. 
*/
 
add_action( 'init', 'type_social', 0 );