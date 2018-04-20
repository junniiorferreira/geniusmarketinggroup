<?php 
// check to see if the logo exists and add it to the page
if ( get_theme_mod( 'suit_up_theme_logo' ) ) : ?>
 
<a href="#"><img src="<?php echo get_theme_mod( 'suit_up_theme_logo' ); ?>" alt="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" ></a>

 
<?php endif; ?>

