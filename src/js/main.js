function setBackground() {
	$('[setBackground]').each(function () {
		var background = $(this).attr('setBackground')
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center"
		})
	})
	$('[setBackgroundRepeat]').each(function () {
		var background = $(this).attr('setBackgroundRepeat')
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat"
		})
	})
}
function toggleMenu() {
	$('.toggle-btn').on('click', function () {
		$('.toggle-btn').toggleClass('active')
		$('.navbar-mobile').toggleClass('active')
		$('.back-drop').toggleClass('active')
		$('body').toggleClass('over-hidden')
	});
	$('.back-drop').on('click', function () {
		$('.toggle-btn').removeClass('active')
		$('.navbar-mobile').removeClass('active')
		$('.back-drop').removeClass('active')
		$('body').removeClass('over-hidden')
	});
}
function toggleSearch() {
	$('.button-search').on('click', function () {
		if($('.button-search em').hasClass('fa-search')){
			$('.button-search em').removeClass('fa-search')
			$('.button-search em').addClass('fa-times')
		}else{
			$('.button-search em').addClass('fa-search')
			$('.button-search em').removeClass('fa-times')
		}
		$('.button-search').toggleClass('active')
		$('.searchbox-wrap').toggleClass('active')

	});
}

	function Aos() {
		AOS.init({
			duration: 1200,
			once: true,
			// disable: "phone",
			offset: 400
		});
	  }
function swiperInit(){
	let HomeBanner = new Swiper('.home-banner .swiper-container', {
        speed: 1000,
        navigation: {
            clickable: true,
            nextEl: '.home-banner .swiper-next',
            prevEl: '.home-banner .swiper-prev'
        },
        pagination: {
            el: '.home-banner .swiper-pagination',
            clickable: true
        },
	})

	let HomePartners = new Swiper('.home-partners .swiper-container', {
		speed: 1000,
		centeredSlides: true,
		slidesPerView: 1,
		slidesPerColumn: 10,
        navigation: {
            clickable: true,
            nextEl: '.home-partners .button-next',
            prevEl: '.home-partners .button-prev'
        },
        pagination: {
            el: '.home-partners .swiper-pagination',
            clickable: true
        },
	})
	let Homeservices = new Swiper('.home-services .swiper-container', {
		speed: 1000,
		centeredSlides: true,
		slidesPerView: 1,
		slidesPerColumn: 10,
        navigation: {
            clickable: true,
            nextEl: '.home-services .button-next',
            prevEl: '.home-services .button-prev'
        },
        pagination: {
            el: '.home-services .swiper-pagination',
            clickable: true
        },
	})
	let HomeProduct = new Swiper('.home-product .swiper-container', {
		speed: 1000,
		centeredSlides: true,
		slidesPerView: 1,
		slidesPerColumn: 10,
        navigation: {
            clickable: true,
            nextEl: '.home-product .button-next',
            prevEl: '.home-product .button-prev'
        },
        pagination: {
            el: '.home-product .swiper-pagination',
            clickable: true
        },
	})
	let HomeProjects = new Swiper('.home-projects .swiper-container', {
        speed: 1000,
        navigation: {
            clickable: true,
            nextEl: '.home-projects .button-next',
            prevEl: '.home-projects .button-prev'
        },
        pagination: {
            el: '.home-projects .swiper-pagination',
            clickable: true
        },
	})
	let AboutCustomer = new Swiper('.customer-section .swiper-container', {
		speed: 1000,
		slidesPerView: 6,
		autoplay: true,
        navigation: {
            clickable: true,
            nextEl: '.customer-section .button-next',
            prevEl: '.customer-section .button-prev'
		},
		breakpoints: {
			768: {
				slidesPerView: 3
			},
			576: {
				slidesPerView: 2
			}
		}
	})
	let OtherServices = new Swiper('.other-services .swiper-container', {
		speed: 1000,
		slidesPerView: 3,
		spaceBetween: 20,
        navigation: {
            clickable: true,
            nextEl: '.other-services .button-next',
            prevEl: '.other-services .button-prev'
		},
		breakpoints: {
			768: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 1
			}
		}
	})
	let OtherProjects = new Swiper('.other-projects .swiper-container', {
		speed: 1000,
		slidesPerView: 3,
		spaceBetween: 20,
        navigation: {
            clickable: true,
            nextEl: '.other-projects .button-next',
            prevEl: '.other-projects .button-prev'
		},
		breakpoints: {
			768: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 1
			}
		}
	})

	let OtherProduct = new Swiper('.other-product .swiper-container', {
		speed: 1000,
		slidesPerView: 2,
		spaceBetween: 20,
		slidesPerColumn: 2,
        navigation: {
            clickable: true,
            nextEl: '.other-product .button-next',
            prevEl: '.other-product .button-prev'
		},
		breakpoints: {
			768: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 1
			}
		}
	})
	
	let galleryThumbs = new Swiper(
		".history-section .thumbs-wrapper .swiper-container",
		{
			slidesPerView: 10,
			freeMode: true,
			watchSlidesVisibility: true,
			watchSlidesProgress: true,
			breakpoints: {
				768: {
					slidesPerView: 2
				},
				1025: {
					slidesPerView: 5
				}
			}
		}
		
	);
	let galleryTop = new Swiper(".history-section .top-wrapper .swiper-container", {
		effect: "fade",
		centeredSlides: true,
		fadeEffect: {
			crossFade: true
		},
		thumbs: {
			swiper: galleryThumbs,
        },
        navigation: {
            nextEl: '.history-section .swiper-btn-next',
            prevEl: '.history-section .swiper-btn-prev',
        },
	});
	

	///////////////projects thumbs
	let projectsGalleryThumbs = new Swiper(
		".projects-detail .thumbs-wrapper .swiper-container",
		{
			slidesPerView: 4,
			spaceBetween: 10,
			freeMode: true,
			watchSlidesVisibility: true,
			watchSlidesProgress: true,
			breakpoints: {
				768: {
					slidesPerView: 2
				},
				1200: {
					slidesPerView: 3
				},
				
			}
		}
		
	);
	let projectsGalleryTop = new Swiper(".projects-detail .top-wrapper .swiper-container", {
		effect: "fade",
		centeredSlides: true,
		fadeEffect: {
			crossFade: true
		},
		thumbs: {
			swiper: projectsGalleryThumbs,
        },
        navigation: {
            nextEl: '.projects-detail .swiper-btn-next',
            prevEl: '.projects-detail .swiper-btn-prev',
        },
    });
	
	

}
function tabActive(){
	$('.leadership-section .tab-item').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('.leadership-section .tab-item').removeClass('active');
		$('.tab-content').removeClass('active');

		$(this).addClass('active');
		$("#"+tab_id).addClass('active');
	})
}
function tabActive2(){
	$('.customer-section .tab-item').click(function(){
		var tbl_id = $(this).attr('data-tab');

		$('.customer-section .tab-item').removeClass('active');
		$('.noidung').removeClass('active');

		$(this).addClass('active');
		$("#"+tbl_id).addClass('active');
	})
}
function filterToggle(){
	$(function() {
		$(".filter-toggle").on("click", function(e) {
		  $(".sort").toggleClass("active");
		  e.stopPropagation()
		});
		// $(document).on("click", function(e) {
		//   if ($(e.target).is(".sort") === false) {
		// 	$(".sort").removeClass("active");
		//   }
		// });
	  });
}
function CustomSelect() {
	$( "#sort-1" ).selectmenu({
		change: function() {
			if($(this).val() != '') {
				window.location = $(this).val();
			}
		},
		width: 200,
	});
	
	$( "#sort-2" ).selectmenu({
		change: function() {
			if($(this).val() != '') {
				window.location = $(this).val();
			}
		},
		width: 320,
	  });
	$( "#sort-3" ).selectmenu({
		change: function() {
			if($(this).val() != '') {
				window.location = $(this).val();
			}
		},
		width: 100
	});
	
}
function backToTop(){
		var btn = $('#back-to-top');

	$(window).scroll(function() {
	if ($(window).scrollTop() > 300) {
		btn.addClass('show');
	} else {
		btn.removeClass('show');
	}
	});

	btn.on('click', function(e) {
	e.preventDefault();
	$('html, body').animate({scrollTop:0}, '500');
	});

}

function accordion(){
	$(".accordions .accordion-title").click(function(e) {
        e.preventDefault();
        if (!$(this)
            .parent()
            .hasClass("active")
        ) {
            $(".accordions .accordion-item .accordion-content").slideUp();
            $(this)
                .next()
                .slideToggle();
            $(".accordions .accordion-item").removeClass("active");
            $(this)
                .parent()
                .addClass("active");
        } else {
            $(this)
                .next()
                .slideToggle();
            $(".accordions .accordion-item").removeClass("active");
        }
    });
}
function Headers(){
	// var e = 0;
    // $(window).scroll(function () {
    //     var i = $(window).scrollTop();
    //     $("body:not('.homepage') header").toggleClass("hide", i > e), e = $(window).scrollTop(), i > 0 ? $("header").addClass("is-scrolled") : $("header").removeClass("is-scrolled"), $(window).scrollTop() >= $(document).height() - $(window).height() && $(".load-more").trigger("click")
	// })
	$(window).scroll(function () {
		if ($(window).scrollTop() >= 100) {
			$('#header').addClass('hide');
		} else {
			$('#header').removeClass('hide');
		}
	});
}
function navMobile(){
	$(".nav-mobile").click(function(){
		$(".nav-sub").toggleClass("show");
	});
}
$(document).ready(function () {
	swiperInit()
	setBackground()
	toggleMenu()
	filterToggle()
	Aos()
	CustomSelect()
	tabActive()
	tabActive2()
	backToTop()
	toggleSearch()
	accordion()
	fullPage()
	Headers()
	navMobile()


	
	// $(".projects__content").find('.sub-title').prependTo(".projects__content .box-title")

	/////img alt
	$('.image>img').each(function() {
		var data = $(this).attr('alt');
		$(this)
		  .wrap("<div class='box-img'></div>")
		  .parent('.box-img')
		  .attr('data-alt', data)
		;
	  });
	
	$(window).on('resize', function () {
		$('header .navbar-mobile').removeClass('active')
		$('body').removeClass('over-hidden')
		$('.back-drop').removeClass('active')
		$('.toggle-btn').removeClass('active')

	})


	var moveSearch = new MappingListener({
		selector: ".search-wrapper",
		mobileWrapper: ".navbar-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: "header .nav-bottom .language",
		desktopMethod: "insertAfter",
		breakpoint: 1025,
	}).watch()
	
	var moveMenu1 = new MappingListener({
		selector: "header .nav-top",
		mobileWrapper: ".navbar-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: ".header__nav",
		desktopMethod: "prependTo",
		breakpoint: 1025,
	}).watch()

	var moveMenu2 = new MappingListener({
		selector: "header .nav-bottom .menu",
		mobileWrapper: ".navbar-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: "header .nav-bottom",
		desktopMethod: "prependTo",
		breakpoint: 1025,
	}).watch()
	$('body').on('click', '#list li', function () {
		var mapHtml = $(this).children('.map-iframe').html();
		$('#map').html(mapHtml);

		$('#list li').removeClass('active');
		$(this).addClass('active');
		if ($(window).outerWidth() < 992) {
			$.fancybox.open({
				src: '#map',
				type: "inline",
				opts: {
					baseClass: "contact-map-popup"
				}
			});
		}
	});
	$("#social-share").jsSocials({
		shareIn: "popup",
		shares: ["twitter", "facebook"],
		showLabel: false
	});

	///////////////
	var bannerHeight = $('#banner-child').height();

	$(window).scroll(function () {
		if ($(window).scrollTop() > bannerHeight ) {
			$('.filter-wrapper').addClass('fixed');
		} else {
			$('.filter-wrapper').removeClass('fixed');
		}
	});
});

function fullPage(){
	$('#fullpage').fullpage({
		anchors: ['section-1', 'section-2', 'section-3', 'section-4', 'section-5','section-6', 'section-7', 'section-8','section-9'],
		autoScrolling: true,
		// scrollingSpeed: 1000,
		verticalCentered: false,
		scrollOverflow: true,
		verticalCentered: true,
		css3: false, // otherwise background-attachment wouldn't work
		onLeave: function(index, next, direction) {
			if (next.index != 0) {
			  $('#header').addClass('hide');
			  $('#gotop').addClass('show');
			} else {
			  $('#header').removeClass('hide');
			  $('#gotop').removeClass('show');
			}
		  },
		  afterLoad: function(){
			$('.fp-table.active .aos-init').addClass('aos-animate');
		},
	});
	
}
$(document).on('click', '#gotop', function(){
	fullpage_api.moveTo('section-1', 1);
  });
  $(document).on('click', '.button-scroll', function(){
	fullpage_api.moveTo('section-2', 2);
  });


 
//////////About navigation start////////
  jQuery(document).ready(function($){
	var aboutNav = $('.about-nav'),
		aboutNavTopPosition = aboutNav.offset().top,
		// taglineOffesetTop = $('#intro-tagline').offset().top + $('#intro-tagline').height() + parseInt($('#intro-tagline').css('paddingTop').replace('px', '')),
		contentSections = $('.section');
	
	$(window).on('scroll', function(){
		//on desktop - assign a position fixed to logo and action button and move them outside the viewport
		// ( $(window).scrollTop() > taglineOffesetTop ) ? $('#logo, .btn').addClass('is-hidden') : $('#logo, .btn').removeClass('is-hidden');
		
		//on desktop - fix about navigation on scrolling
		if($(window).scrollTop() > aboutNavTopPosition ) {
			//fix about navigation
			aboutNav.addClass('is-fixed');
			//push the .main-content giving it a top-margin
			$('.main-content').addClass('has-top-margin');	
			//on Firefox CSS transition/animation fails when parent element changes position attribute
			//so we to change about navigation childrens attributes after having changed its position value
			setTimeout(function() {
	            aboutNav.addClass('animate-children');
	            $('#logo').addClass('slide-in');
				$('.btn').addClass('slide-in');
	        }, 50);
		} else {
			aboutNav.removeClass('is-fixed');
			$('.main-content').removeClass('has-top-margin');
			setTimeout(function() {
	            aboutNav.removeClass('animate-children');
	            $('#logo').removeClass('slide-in');
				$('.btn').removeClass('slide-in');
	        }, 50);
		}

		//on desktop - update the active link in the about fixed navigation
		updateaboutNavigation();
	});

	function updateaboutNavigation() {
		contentSections.each(function(){
			var actual = $(this),
				actualHeight = actual.height() + parseInt(actual.css('paddingTop').replace('px', '')) + parseInt(actual.css('paddingBottom').replace('px', '')),
				actualAnchor = aboutNav.find('a[href="#'+actual.attr('id')+'"]');
			if ( ( actual.offset().top - aboutNav.height() <= $(window).scrollTop() ) && ( actual.offset().top +  actualHeight - aboutNav.height() > $(window).scrollTop() ) ) {
				actualAnchor.addClass('active');
			}else {
				actualAnchor.removeClass('active');
			}
		});
	}

	//on mobile - open/close about navigation clicking/tapping the .about-nav-trigger
	$('.about-nav-trigger').on('click', function(event){
		event.preventDefault();
		$(this).toggleClass('menu-is-open');
		aboutNav.find('ul').toggleClass('is-visible');
	});

	//smooth scrolling when clicking on the about navigation items
	aboutNav.find('ul a').on('click', function(event){
        event.preventDefault();
        var target= $(this.hash);
        $('body,html').animate({
        	'scrollTop': target.offset().top - aboutNav.height() + 1
        	}, 400
        ); 
        //on mobile - close about navigation
        $('.about-nav-trigger').removeClass('menu-is-open');
        aboutNav.find('ul').removeClass('is-visible');
    });

    //on mobile - open/close primary navigation clicking/tapping the menu icon
	$('.primary-nav').on('click', function(event){
		if($(event.target).is('.primary-nav')) $(this).children('ul').toggleClass('is-visible');
	});
});
////////////about navigation end/////////////
