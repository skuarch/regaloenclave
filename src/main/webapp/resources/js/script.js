/* ----------------- Start JS Document ----------------- */

/**alertify **/
!function(a,b){"use strict";var c,d=a.document;c=function(){function c(a,b,c){for(var e="undefined"!=typeof c?[c]:d.styleSheets,f=0,g=e.length;g>f;f++)if(c=e[f],c.cssRules)for(var h=0,i=c.cssRules.length;i>h;h++){var j=c.cssRules[h];if(j.selectorText&&-1!==j.selectorText.split(",").indexOf(b))return j.style[a]}return null}var e,f,g,h,i,j,k,l,m,n,o,p,q,r={},s={},t=!1,u={ENTER:13,ESC:27,SPACE:32},v=[];return s={buttons:{holder:'<nav class="alertify-buttons">{{buttons}}</nav>',submit:'<button type="submit" class="alertify-button alertify-button-ok" id="alertify-ok">{{ok}}</button>',ok:'<button class="alertify-button alertify-button-ok" id="alertify-ok">{{ok}}</button>',cancel:'<button class="alertify-button alertify-button-cancel" id="alertify-cancel">{{cancel}}</button>'},input:'<div class="alertify-text-wrapper"><input type="text" class="alertify-text" id="alertify-text"></div>',message:'<p class="alertify-message">{{message}}</p>',log:'<article class="alertify-log{{class}}">{{message}}</article>'},q=function(){var a,c,e=!1,f=d.createElement("fakeelement"),g={WebkitTransition:"webkitTransitionEnd",MozTransition:"transitionend",OTransition:"otransitionend",transition:"transitionend"};for(a in g)if(g.hasOwnProperty(a)&&f.style[a]!==b){c=g[a],e=!0;break}return{type:c,supported:e}},e=function(a){return d.getElementById(a)},r={labels:{ok:"OK",cancel:"Cancel"},delay:5e3,buttonReverse:!1,buttonFocus:"ok",transition:b,keydown:!1,addListeners:function(b){var c,d,e,j,k,l,m="undefined"!=typeof g,n="undefined"!=typeof f,o="undefined"!=typeof p,q="",r=this;d=function(a){a.preventDefault(),j(a),"undefined"!=typeof p&&(q=p.value),"function"==typeof b&&("undefined"!=typeof p?b(!0,q):b(!0))},e=function(a){a.preventDefault(),j(a),"function"==typeof b&&b(!1)},j=function(){r.hide(),a.removeEventListener("keyup",k),a.removeEventListener("keydown",c),a.removeEventListener("focus",l),m&&g.removeEventListener("click",d),n&&f.removeEventListener("click",e)},k=function(a){var b=a.keyCode;r.keydown=!1,b===u.SPACE&&!o||o&&b===u.ENTER?d(a):b===u.ESC&&n&&e(a)},c=function(){r.keydown=!0},l=function(){o?p.focus():!n||r.buttonReverse?g.focus():f.focus()},h.addEventListener("focus",l),i.addEventListener("focus",l),m&&g.addEventListener("click",d),n&&f.addEventListener("click",e),a.addEventListener("keyup",k),a.addEventListener("keydown",c),this.transition.supported||this.setFocus()},handleErrors:function(){if("undefined"!=typeof a.onerror){var b=this;return a.onerror=function(a,c,d){b.error("["+a+" on line "+d+" of "+c+"]",0)},!0}return!1},appendButtons:function(a,b){return this.buttonReverse?b+a:a+b},build:function(a){var b="",c=a.type,d=a.message,e=a.cssClass||"";switch(b+='<div class="alertify-dialog">',b+='<a id="alertify-resetFocusBack" class="alertify-resetFocus" href="#">Reset Focus</a>',"none"===r.buttonFocus&&(b+='<a href="#" id="alertify-noneFocus" class="alertify-hidden"></a>'),"prompt"===c&&(b+='<div id="alertify-form">'),b+='<article class="alertify-inner">',b+=s.message.replace("{{message}}",d),"prompt"===c&&(b+=s.input),b+=s.buttons.holder,b+="</article>","prompt"===c&&(b+="</div>"),b+='<a id="alertify-resetFocus" class="alertify-resetFocus" href="#">Reset Focus</a>',b+="</div>",c){case"confirm":b=b.replace("{{buttons}}",this.appendButtons(s.buttons.cancel,s.buttons.ok)),b=b.replace("{{ok}}",this.labels.ok).replace("{{cancel}}",this.labels.cancel);break;case"prompt":b=b.replace("{{buttons}}",this.appendButtons(s.buttons.cancel,s.buttons.submit)),b=b.replace("{{ok}}",this.labels.ok).replace("{{cancel}}",this.labels.cancel);break;case"alert":b=b.replace("{{buttons}}",s.buttons.ok),b=b.replace("{{ok}}",this.labels.ok)}return m.className="alertify alertify-"+c+" "+e,l.className="alertify-cover",b},close:function(a,b){var d,e,f=b&&!isNaN(b)?+b:this.delay,g=this;a.addEventListener("click",function(){d(a)}),e=function(a){a.stopPropagation(),this.removeEventListener(g.transition.type,e),n.removeChild(this),n.hasChildNodes()||(n.className+=" alertify-logs-hidden")},d=function(a){if("undefined"!=typeof a&&a.parentNode===n)if(g.transition.supported){a.addEventListener(g.transition.type,e),a.className+=" alertify-log-hide";var b=(c("transition-duration",".alertify-log-hide")||c("-webkit-transition-duration",".alertify-log-hide")||c("-moz-transition-duration",".alertify-log-hide")||c("-o-transition-duration",".alertify-log-hide")||"0").toLowerCase(),d=parseInt(b),f=1;(!d||isNaN(d))&&(d=500),b.indexOf("ms")>-1?d+=f:b.indexOf("s")>-1&&(d*=1e3,d+=f),setTimeout(function(){"undefined"!=typeof a&&a.parentNode===n&&n.removeChild(a)},d)}else n.removeChild(a),n.hasChildNodes()||(n.className+=" alertify-logs-hidden")},0!==b&&setTimeout(function(){d(a)},f)},dialog:function(a,b,c,e,f){k=d.activeElement;var g=function(){n&&null!==n.scrollTop&&l&&null!==l.scrollTop||g()};if("string"!=typeof a)throw new Error("message must be a string");if("string"!=typeof b)throw new Error("type must be a string");if("undefined"!=typeof c&&"function"!=typeof c)throw new Error("fn must be a function");return this.init(),g(),v.push({type:b,message:a,callback:c,placeholder:e,cssClass:f}),t||this.setup(),this},extend:function(a){if("string"!=typeof a)throw new Error("extend method must have exactly one parameter");return function(b,c){return this.log(b,a,c),this}},hide:function(){var a,b=this;v.splice(0,1),v.length>0?this.setup(!0):(t=!1,a=function(c){c.stopPropagation(),m.removeEventListener(b.transition.type,a)},this.transition.supported?(m.addEventListener(this.transition.type,a),m.className="alertify alertify-hide alertify-hidden"):m.className="alertify alertify-hide alertify-hidden alertify-isHidden",l.className="alertify-cover alertify-cover-hidden",setTimeout(function(){b.keydown?d.body.focus():k.focus()}))},init:function(){null==e("alertify-cover")&&(l=d.createElement("div"),l.setAttribute("id","alertify-cover"),l.className="alertify-cover alertify-cover-hidden",d.body.appendChild(l)),null==e("alertify")&&(t=!1,v=[],m=d.createElement("section"),m.setAttribute("id","alertify"),m.className="alertify alertify-hidden",d.body.appendChild(m)),null==e("alertify-logs")&&(n=d.createElement("section"),n.setAttribute("id","alertify-logs"),n.className="alertify-logs alertify-logs-hidden",d.body.appendChild(n)),d.body.setAttribute("tabindex","0"),this.transition=q()},log:function(a,b,c,d){var e=function(){n&&null!==n.scrollTop||e()};return this.init(),e(),n.className="alertify-logs",this.notify(a,b,c,d),this},notify:function(a,b,c,e){var f=d.createElement("article");f.className="alertify-log"+("string"==typeof b&&""!==b?" alertify-log-"+b:""),f.innerHTML=a,"function"==typeof e&&f.addEventListener("click",e),n.appendChild(f),setTimeout(function(){f.className=f.className+" alertify-log-show"},50),this.close(f,c)},set:function(a){var b;if("object"!=typeof a&&a instanceof Array)throw new Error("args must be an object");for(b in a)a.hasOwnProperty(b)&&(this[b]=a[b])},setFocus:function(){p?(p.focus(),p.select()):j.focus()},setup:function(a){var c,d=v[0],k=this;t=!0,c=function(a){a.stopPropagation(),k.setFocus(),m.removeEventListener(k.transition.type,c)},this.transition.supported&&!a&&m.addEventListener(this.transition.type,c),m.innerHTML=this.build(d),h=e("alertify-resetFocus"),i=e("alertify-resetFocusBack"),g=e("alertify-ok")||b,f=e("alertify-cancel")||b,j="cancel"===r.buttonFocus?f:"none"===r.buttonFocus?e("alertify-noneFocus"):g,p=e("alertify-text")||b,o=e("alertify-form")||b,"string"==typeof d.placeholder&&""!==d.placeholder&&(p.value=d.placeholder),a&&this.setFocus(),this.addListeners(d.callback)}},{alert:function(a,b,c){return r.dialog(a,"alert",b,"",c),this},confirm:function(a,b,c){return r.dialog(a,"confirm",b,"",c),this},extend:r.extend,init:r.init,log:function(a,b,c,d){return r.log(a,b,c,d),this},prompt:function(a,b,c,d){return r.dialog(a,"prompt",b,c,d),this},success:function(a,b,c){return r.log(a,"success",b,c),this},error:function(a,b,c){return r.log(a,"error",b,c),this},set:function(a){r.set(a)},labels:r.labels,debug:r.handleErrors}},"function"==typeof define?define([],function(){return new c}):"undefined"==typeof a.alertify&&(a.alertify=new c)}(window);

var $ = jQuery.noConflict();

// Page Loader
$(window).load(function () {
    "use strict";
	//$('#loader').fadeOut();
});

$(document).ready(function ($) {
	"use strict";
	$('#loader').fadeOut();
	
	
	/*----------------------------------------------------*/
	/*	Hidder Header
	/*----------------------------------------------------*/
	
	var headerEle = function(){
		var $headerHeight = $('header').height();
		$('.hidden-header').css({ 'height' : $headerHeight  + "px" });
	};
	
	$(window).load(function () {
	  headerEle();
	});
	
	$(window).resize(function () {
	   headerEle();
	});
	
    
    /*---------------------------------------------------*/
    /* Progress Bar
    /*---------------------------------------------------*/
    
    
    /*$('.skill-shortcode').appear(function() {
  		$('.progress').each(function(){ 
    		$('.progress-bar').css('width',  function(){ return ($(this).attr('data-percentage')+'%')});
  		});
	},{accY: -100});*/
	
	
	
    /*--------------------------------------------------*/
    /* Counter
    /*--------------------------------------------------*/
    
    
    
    $('.timer').countTo();

    $('.counter-item').appear(function() {
        $('.timer').countTo();
    },{accY: -100});
    
    
	
	/*----------------------------------------------------*/
	/*	Nice-Scroll
	/*----------------------------------------------------*/
	
	/*$("html").niceScroll({
		scrollspeed: 100,
		mousescrollstep: 38,
		cursorwidth: 5,
		cursorborder: 0,
		cursorcolor: '#333',
		autohidemode: true,
		zindex: 999999999,
		horizrailenabled: false,
		cursorborderradius: 0,
	});*/
		
	
	
	
	
	/*----------------------------------------------------*/
	/*	Nav Menu & Search
	/*----------------------------------------------------*/
	
	$(".nav > li:has(ul)").addClass("drop");
	$(".nav > li.drop > ul").addClass("dropdown");
	$(".nav > li.drop > ul.dropdown ul").addClass("sup-dropdown");
	
	$('.show-search').click(function() {
		$('.search-form').fadeIn(300);
		$('.search-form input').focus();
	});
	$('.search-form input').blur(function() {
		$('.search-form').fadeOut(300);
	});
	
	
	
	
	
	/*----------------------------------------------------*/
	/*	Back Top Link
	/*----------------------------------------------------*/
	
    var offset = 200;
    var duration = 500;
    $(window).scroll(function() {
        if ($(this).scrollTop() > offset) {
            $('.back-to-top').fadeIn(400);
        } else {
            $('.back-to-top').fadeOut(400);
        }
    });
    $('.back-to-top').click(function(event) {
        event.preventDefault();
        $('html, body').animate({scrollTop: 0}, 600);
        return false;
    })
	
	
	
	
	/*----------------------------------------------------*/
	/*	Sliders & Carousel
	/*----------------------------------------------------*/
	
	////------- Touch Slider
	var time = 4.4,
		$progressBar,
		$bar,
		$elem,
		isPause,
		tick,
		percentTime;
	$('.touch-slider').each(function(){
		var owl = jQuery(this),
			sliderNav = $(this).attr('data-slider-navigation'),
			sliderPag = $(this).attr('data-slider-pagination'),
			sliderProgressBar = $(this).attr('data-slider-progress-bar');
			
		if ( sliderNav == 'false' || sliderNav == '0' ) {
			var returnSliderNav = false
		}else {
			var returnSliderNav = true
		}
		
		if ( sliderPag == 'true' || sliderPag == '1' ) {
			var returnSliderPag = true
		}else {
			var returnSliderPag = false
		}
		
		if ( sliderProgressBar == 'true' || sliderProgressBar == '1' ) {
			var returnSliderProgressBar = progressBar
			var returnAutoPlay = false
		}else {
			var returnSliderProgressBar = false
			var returnAutoPlay = true
		}
		
		owl.owlCarousel({
			navigation : returnSliderNav,
			pagination: returnSliderPag,
			slideSpeed : 500,
			paginationSpeed : 500,
			lazyLoad : true,
			singleItem: true,
			autoHeight : true,
			autoPlay: returnAutoPlay,
			stopOnHover: returnAutoPlay,
			transitionStyle : "fade",
			afterInit : returnSliderProgressBar,
			afterMove : moved,
			startDragging : pauseOnDragging
		});
		
	});

    /*unction progressBar(elem){
		$elem = elem;
		buildProgressBar();
		start();
    }
	
    function buildProgressBar(){
		$progressBar = $("<div>",{
			id:"progressBar"
		});
		$bar = $("<div>",{
			id:"bar"
		});
		$progressBar.append($bar).prependTo($elem);
    }*/
	
	function start() {
		percentTime = 0;
		isPause = false;
		tick = setInterval(interval, 10);
    };
 
    function interval() {
		if(isPause === false){
			percentTime += 1 / time;
			$bar.css({
				width: percentTime+"%"
			});
			if(percentTime >= 100){
				$elem.trigger('owl.next')
			}
		}
    }
	
    function pauseOnDragging(){
      isPause = true;
    }
	
    function moved(){
      clearTimeout(tick);
      start();
    }
	
	
	
	////------- Projects Carousel
	$(".projects-carousel").owlCarousel({
		navigation : true,
		pagination: false,
		slideSpeed : 500,
		stopOnHover: true,
    	autoPlay: 3000,
    	items : 4,
    	itemsDesktopSmall : [900,3],
		itemsTablet: [600,2],
		itemsMobile : [479, 1]
	});
	
	
	
	////------- Testimonials Carousel
	$(".testimonials-carousel").owlCarousel({
		navigation : true,
		pagination: false,
		slideSpeed : 2500,
		stopOnHover: true,
    	autoPlay: 3000,
    	singleItem:true,
		autoHeight : true,
		transitionStyle : "fade"
	});
	
	
	
	
	
	
	////------- Custom Carousel
	$('.custom-carousel').each(function(){
		var owl = jQuery(this),
			itemsNum = $(this).attr('data-appeared-items'),
			sliderNavigation = $(this).attr('data-navigation');
			
		if ( sliderNavigation == 'false' || sliderNavigation == '0' ) {
			var returnSliderNavigation = false
		}else {
			var returnSliderNavigation = true
		}
		if( itemsNum == 1) {
			var deskitemsNum = 1;
			var desksmallitemsNum = 1;
			var tabletitemsNum = 1;
		} 
		else if (itemsNum >= 2 && itemsNum < 4) {
			var deskitemsNum = itemsNum;
			var desksmallitemsNum = itemsNum - 1;
			var tabletitemsNum = itemsNum - 1;
		} 
		else if (itemsNum >= 4 && itemsNum < 8) {
			var deskitemsNum = itemsNum -1;
			var desksmallitemsNum = itemsNum - 2;
			var tabletitemsNum = itemsNum - 3;
		} 
		else {
			var deskitemsNum = itemsNum -3;
			var desksmallitemsNum = itemsNum - 6;
			var tabletitemsNum = itemsNum - 8;
		}
		owl.owlCarousel({
			slideSpeed : 400,
			stopOnHover: true,
			autoPlay: false,
			navigation : returnSliderNavigation,
			pagination: false,
			lazyLoad : true,
			items : itemsNum,
			itemsDesktop : [1000,deskitemsNum],
			itemsDesktopSmall : [900,desksmallitemsNum],
			itemsTablet: [600,tabletitemsNum],
			itemsMobile : false,
			transitionStyle : "goDown",
		});
	});
	
    
    
    ////------- Testimonials Carousel
	$(".fullwidth-projects-carousel").owlCarousel({
		navigation : false,
		pagination: false,
		slideSpeed : 400,
		stopOnHover: true,
    	autoPlay: 3000,
    	items : 5,
    	itemsDesktopSmall : [900,3],
		itemsTablet: [600,2],
		itemsMobile : [479, 1]
	});
	
	
	
	
	/*----------------------------------------------------*/
	/*	Tabs
	/*----------------------------------------------------*/
	
	$('#myTab a').click(function (e) {
		e.preventDefault()
		$(this).tab('show')
	})
	
	
	
	
	/*----------------------------------------------------*/
	/*	Css3 Transition
	/*----------------------------------------------------*/
	
	/*$('*').each(function(){
		if($(this).attr('data-animation')) {
			var $animationName = $(this).attr('data-animation'),
				$animationDelay = "delay-"+$(this).attr('data-animation-delay');
			$(this).appear(function() {
				$(this).addClass('animated').addClass($animationName);
				$(this).addClass('animated').addClass($animationDelay);
			});
		}
	});*/
	
	
	
	
	/*----------------------------------------------------*/
	/*	Pie Charts
	/*----------------------------------------------------*/
	
	/*var pieChartClass = 'pieChart',
        pieChartLoadedClass = 'pie-chart-loaded';
		
	function initPieCharts() {
		var chart = $('.' + pieChartClass);
		chart.each(function() {
			$(this).appear(function() {
				var $this = $(this),
					chartBarColor = ($this.data('bar-color')) ? $this.data('bar-color') : "#F54F36",
					chartBarWidth = ($this.data('bar-width')) ? ($this.data('bar-width')) : 150
				if( !$this.hasClass(pieChartLoadedClass) ) {
					$this.easyPieChart({
						animate: 2000,
						size: chartBarWidth,
						lineWidth: 2,
						scaleColor: false,
						trackColor: "#eee",
						barColor: chartBarColor,
					}).addClass(pieChartLoadedClass);
				}
			});
		});
	}
	initPieCharts();*/
	
	
	
	
	
	/*----------------------------------------------------*/
	/*	Animation Progress Bars
	/*----------------------------------------------------*/
	
	/*$("[data-progress-animation]").each(function() {
		
		var $this = $(this);
		
		$this.appear(function() {
			
			var delay = ($this.attr("data-appear-animation-delay") ? $this.attr("data-appear-animation-delay") : 1);
			
			if(delay > 1) $this.css("animation-delay", delay + "ms");
			
			setTimeout(function() { $this.animate({width: $this.attr("data-progress-animation")}, 800);}, delay);

		}, {accX: 0, accY: -50});

	});*/
	
	
	
	
	
	/*----------------------------------------------------*/
	/*	Milestone Counter
	/*----------------------------------------------------*/
	
	jQuery('.milestone-block').each(function() {
		jQuery(this).appear(function() {
			var $endNum = parseInt(jQuery(this).find('.milestone-number').text());
			jQuery(this).find('.milestone-number').countTo({
				from: 0,
				to: $endNum,
				speed: 4000,
				refreshInterval: 60,
			});
		},{accX: 0, accY: 0});
	});
	
	
	
	
	
	/*----------------------------------------------------*/
	/*	Nivo Lightbox
	/*----------------------------------------------------*/
	
	$('.lightbox').nivoLightbox({
		effect: 'fadeScale',
		keyboardNav: true,
		errorMessage: 'The requested content cannot be loaded. Please try again later.'
	});
	
	
	
	
	
	/*----------------------------------------------------*/
	/*	Change Slider Nav Icons
	/*----------------------------------------------------*/
	
	$('.touch-slider').find('.owl-prev').html('<i class="fa fa-angle-left"></i>');
	$('.touch-slider').find('.owl-next').html('<i class="fa fa-angle-right"></i>');
	$('.touch-carousel, .testimonials-carousel').find('.owl-prev').html('<i class="fa fa-angle-left"></i>');
	$('.touch-carousel, .testimonials-carousel').find('.owl-next').html('<i class="fa fa-angle-right"></i>');
	$('.read-more').append('<i class="fa fa-angle-right"></i>');
	
	
	
	
	/*----------------------------------------------------*/
	/*	Tooltips & Fit Vids & Parallax & Text Animations
	/*----------------------------------------------------*/
	
	//$("body").fitVids();
	
	$('.itl-tooltip').tooltip();
	
	$('.bg-parallax').each(function() {
		$(this).parallax("30%", 0.2);
	});
	
	$('.tlt').textillate({
		loop: true,
		in: {
			effect: 'fadeInUp',
			delayScale: 2,
			delay: 10,
			sync: false,
			shuffle: false,
			reverse: true,
		},
		out: {
			effect: 'fadeOutUp',
			delayScale: 2,
			delay: 10,
			sync: false,
			shuffle: false,
			reverse: true,
		},
	});
	
	
	
	
	
	/*----------------------------------------------------*/
	/*	Sticky Header
	/*----------------------------------------------------*/
	
	(function() {
		
		var docElem = document.documentElement,
			didScroll = false,
			changeHeaderOn = 100;
			document.querySelector( 'header' );
			
		function init() {
			window.addEventListener( 'scroll', function() {
				if( !didScroll ) {
					didScroll = true;
					setTimeout( scrollPage, 250 );
				}
			}, false );
		}
		
		function scrollPage() {
			var sy = scrollY();
			if ( sy >= changeHeaderOn ) {
				$('.top-bar').slideUp(300);
				$("header").addClass("fixed-header");
				$('.navbar-brand').css({ 'padding-top' : 19 + "px", 'padding-bottom' : 19 + "px" });
				
				if (/iPhone|iPod|BlackBerry/i.test(navigator.userAgent) || $(window).width() < 479 ){
					$('.navbar-default .navbar-nav > li > a').css({ 'padding-top' : 0 + "px", 'padding-bottom' : 0 + "px" })
				}else{
					$('.navbar-default .navbar-nav > li > a').css({ 'padding-top' : 20 + "px", 'padding-bottom' : 20 + "px" })
					$('.search-side').css({ 'margin-top' : -7 + "px" });
				};
				
			}
			else {
				$('.top-bar').slideDown(300);
				$("header").removeClass("fixed-header");
				$('.navbar-brand').css({ 'padding-top' : 27 + "px", 'padding-bottom' : 27 + "px" });
				
				if (/iPhone|iPod|BlackBerry/i.test(navigator.userAgent) || $(window).width() < 479 ){
					$('.navbar-default .navbar-nav > li > a').css({ 'padding-top' : 0 + "px", 'padding-bottom' : 0 + "px" })
				}else{
					$('.navbar-default .navbar-nav > li > a').css({ 'padding-top' : 28 + "px", 'padding-bottom' : 28 + "px" })
					$('.search-side').css({ 'margin-top' : 0  + "px" });
				};
				
			}
			didScroll = false;
		}
		
		function scrollY() {
			return window.pageYOffset || docElem.scrollTop;
		}
		
		init();
		
		
		
	})();
});




/*----------------------------------------------------*/
/*	Portfolio Isotope
/*----------------------------------------------------*/

jQuery(window).load(function(){
	
	var $container = $('#portfolio');
	$container.isotope({
		layoutMode : 'masonry',
		filter: '*',
		animationOptions: {
			duration: 750,
			easing: 'linear',
			queue: false,
		}
	});

	$('.portfolio-filter ul a').click(function(){
		var selector = $(this).attr('data-filter');
		$container.isotope({
			filter: selector,
			animationOptions: {
				duration: 750,
				easing: 'linear',
				queue: false,
			}
		});
	  return false;
	});

	var $optionSets = $('.portfolio-filter ul'),
	    $optionLinks = $optionSets.find('a');
	$optionLinks.click(function(){
		var $this = $(this);
		if ( $this.hasClass('selected') ) { return false; }
		var $optionSet = $this.parents('.portfolio-filter ul');
		$optionSet.find('.selected').removeClass('selected');
		$this.addClass('selected'); 
	});
	
});

function showError(){
    alertify.alert("lo sentimos tenemos un error. por favor intentalo mas tarde<br/><br/>");
    alertify.error("error en operacion");
}

function showSuccess(){
    alertify.alert("operacion terminada con exito<br/><br/>");
    alertify.success("operacion terminada con exito");
}

function isEmail(email) {
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email);
}

function preventDefaultForm(event){
    if (event.preventDefault) {
        event.preventDefault();
    } else {
        event.returnValue = false;
    }    
}

function addSubscriber(){
    var email = $("#subscriberEmail").val();
    if(!isEmail(email)){
        alertify.alert("por favor introduzca un correo valido");
    }else{
        alertify.alert("gracias por subscribirte a regalo en clave");    
    }        
}

function myGifts(){
    
    email = $("#email").val();
    
    if(!isEmail(email)){
        alertify.alert("el correo electronico es incorrecto");
    }else{
        $.ajax({
            data:{email:email},
            url: "reportGifts",            
            type: 'POST',
            success: function (data, textStatus, jqXHR) {
                $("#send").attr("disabled", "disabled");
                showSuccess();
                $("#message").fadeIn();
            },
            error: function (jqXHR, textStatus, errorThrown) {alert(textStatus);
                showError();
            }
        }); 
    }
    
}

$("#createPartnerForm").submit(function (event) {
    createPartner(event);
});

function createPartner(event){
    
    preventDefaultForm(event);
    
    var error = "";
    var name = $("#name").val();    
    var lastName = $("#lastName").val();    
    var phone = $("#phone").val();    
    var email = $("#email").val();        
    var password = $("#password").val();        
    var passwordConfirm = $("#passwordConfirm").val();        
    var gender = $("#gender").val();        
 
    if (name.length < 2) {
        error += "<br>el nombre es muy corto";
    }

    if (lastName.length < 5) {
        error += "<br> el apellido es muy corto";
    }

    if (!isEmail(email)) {
        error += "<br> el email es incorrecto";
    }

    if (isNaN(phone)) {
        error += "<br>el telefono es incorrecto";
    }

    if (phone.length < 5) {
        error += "<br>el telefono es muy corto";
    }

    if (password !== passwordConfirm) {
        error += "<br/>los password no coinciden";        
    }

    if (password.length < 4) {
        error += "<br>el password es muy corto";
    }

    if (password.length < 5 || password.length > 10) {
        error += "<br>la longitud maxima del password es de 10 caracteres";
    }
    
    if (gender == 1) {
        g = "masculino";
    } else {
        g = "femenino";
    }
    
    if (error.length > 0) {
        alertify.alert("aparecer que algo esta mal<br>" + error);
        return;
    } else {
        
        var confirm = "Confirma los siguientes datos<br/><br/>";
        confirm += "<div class='alert alert-warning'>";
        confirm += "nombre: " + name;
        confirm += "<br/>apellido: " + lastName;
        confirm += "<br/>telefono: " + phone;
        confirm += "<br/>email: " + email;
        confirm += "<br/>genero: " + g;        
        confirm += "</div>";
        confirm += "he leido y acepto las condiciones de uso<br/><br/>";
        
        var data = {name:name, lastName: lastName, phone:phone, email:email, password:$.md5(String(password)), gender:gender};
        alertify.confirm(confirm, function (e) {
            if (e) {
                $.ajax({
                    url: "createPartner",
                    type: "post",
                    data:data,
                    beforeSend: function (xhr) {                        
                        $("#buttonForm").attr("disabled", "disabled");
                    }, success: function (data, textStatus, jqXHR) {
                        if(data.created === true){
                            showSuccess();
                            $("#createPartnerForm")[0].reset();
                        }else{
                            showError();
                        }                                                
                    }, error: function (jqXHR, textStatus, errorThrown) {
                        showError();
                    }, complete: function (jqXHR, textStatus) {
                        $("#buttonForm").removeAttr("disabled");
                    }
                });
            }
        });
    }    
}





/* ----------------- End JS Document ----------------- */
