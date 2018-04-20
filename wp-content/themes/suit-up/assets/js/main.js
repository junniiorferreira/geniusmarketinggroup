window.addEventListener('load', function() {
  $('.loading').fadeOut(700);
  $('.suit-up-landing-page').delay(1500).fadeIn(700);
});

document.addEventListener("DOMContentLoaded", function() {

	// var waypoint1 = new Waypoint({
	//   element: document.getElementById('webdor'),
	//   handler: function(direction) {
	//   	$('#about').addClass('fadeIn');
	//   },
	//   offset: 350 
	// });

    //set a waypoint for all the page parts on the page
    var waypoint1 = $('#about').waypoint(function(direction) {
        	//check the direction
	        if(direction == 'down') {
	            //add the class to start the animation
	            $(this.element).addClass('fadeIn');
	            //then destroy this waypoint, we don't need it anymore
	            this.destroy();
	        }
	    },{offset: '100px'}
	);

    var waypoint2 = $('#seo').waypoint(function(direction) {
        	//check the direction
	        if(direction == 'down') {
	            //add the class to start the animation
	            $(this.element).addClass('fadeIn');
	            //then destroy this waypoint, we don't need it anymore
	            this.destroy();
	        }
	    },{offset: '250px'}
	);	

    var waypoint3 = $('#design').waypoint(function(direction) {
        	//check the direction
	        if(direction == 'down') {
	            //add the class to start the animation
	            $(this.element).addClass('fadeIn');
	            //then destroy this waypoint, we don't need it anymore
	            this.destroy();
	        }
	    },{offset: '400px'}
	);	

    var waypoint4 = $('#marketing').waypoint(function(direction) {
        	//check the direction
	        if(direction == 'down') {
	            //add the class to start the animation
	            $(this.element).addClass('fadeIn');
	            //then destroy this waypoint, we don't need it anymore
	            this.destroy();
	        }
	    },{offset: '800px'}
	);	

    var waypoint5 = $('#faq').waypoint(function(direction) {
        	//check the direction
	        if(direction == 'down') {
	            //add the class to start the animation
	            $(this.element).addClass('fadeIn');
	            //then destroy this waypoint, we don't need it anymore
	            this.destroy();
	        }
	    },{offset: '1000px'}
	);		

    var waypoint6 = $('#clients').waypoint(function(direction) {
        	//check the direction
	        if(direction == 'down') {
	            //add the class to start the animation
	            $(this.element).addClass('fadeIn');
	            //then destroy this waypoint, we don't need it anymore
	            this.destroy();
	        }
	    },{offset: '1200px'}
	);		

    var waypoint7 = $('#contact').waypoint(function(direction) {
        	//check the direction
	        if(direction == 'down') {
	            //add the class to start the animation
	            $(this.element).addClass('fadeIn');
	            //then destroy this waypoint, we don't need it anymore
	            this.destroy();
	        }
	    },{offset: '1300px'}
	);	

	var btn = $('.section-faq .section-content .faq-box .result');	
	var content = $('.section-faq .section-content .faq-box .result p');

	btn.bind( "click", function() {
		$(this).toggleClass( "open" ).find(content).slideToggle();
	});

	var scene1 = document.getElementById('scene1');
	var parallaxWebdor = new Parallax(scene1);

	var scene2 = document.getElementById('scene2');
	var parallaxAbout = new Parallax(scene2);

	var scene3 = document.getElementById('scene3');
	var parallaxAbout2 = new Parallax(scene3);	

	// var scene4 = document.getElementById('scene4');
	// var parallaxAbout3 = new Parallax(scene4);

	var scene5 = document.getElementById('scene5');
	var parallaxAbout4 = new Parallax(scene5);				

	var scene6 = document.getElementById('scene6');
	var parallaxAbout5 = new Parallax(scene6);	



	var frame4 = $('.board-frame.frame4');

	var frame7 = $('.board-frame.frame7');

	var board1 = $('.board-group.group1');

	var board2 = $('.board-group.group2');

	board1.delay(2600).addClass('animated slideInRight').fadeIn(1700, function(){
		frame4.delay(4000).addClass('animated infinite slidecaption-invert').delay(4000);
	});

	board2.delay(2600).addClass(' animated slideInLeft').fadeIn(1700,function(){
		frame7.delay(4000).addClass('animated infinite slidecaption').delay(4000);
	});

	var sth = $( ".header" ).clone().appendTo( ".stick-header" );

	var $w = $(window);

	$w.on("scroll", function(){
	   if( $w.scrollTop() > 300 ) {
	       sth.addClass('stick-menu animated fadeInDown');
	   }else if( $w.scrollTop() < 90 ){
	   		sth.removeClass('stick-menu fadeInDown');
	   }

	});	

});