$(document).on("turbolinks:load", function () {
//chosen
  $('.chosen-select').chosen({width:'190px'})
//CKediter
 /** Config CKEditor */
  CKEDITOR.config.height = 350;

    /*
    var defaults = {
        containerID: 'toTop', // fading element id
      containerHoverID: 'toTopHover', // fading element hover id
      scrollSpeed: 1200,
      easingType: 'linear'
    };
    */

    $().UItoTop({ easingType: 'easeOutQuart' });


  jQuery(document).ready(function($) {
      $(".scroll").click(function(event){
        event.preventDefault();
        $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
      });
    });

  $("document").ready(function() {
    $("#video").simplePlayer();
  });

  $("document").ready(function() {
    $("#video1").simplePlayer();
  });

  $("document").ready(function() {
    $("#video2").simplePlayer();
  });
  $("document").ready(function() {
    $("#video3").simplePlayer();
  });

  $(document).ready(function() {
    $('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
      type: 'inline',
      fixedContentPos: false,
      fixedBgPos: true,
      overflowY: 'auto',
      closeBtnInside: true,
      preloader: false,
      midClick: true,
      removalDelay: 300,
      mainClass: 'my-mfp-zoom-in'
    });
  });

  $(document).ready(function () {
    $('#horizontalTab').easyResponsiveTabs({
    type: 'default', //Types: default, vertical, accordion
    width: 'auto', //auto or any width like 600px
    fit: true,   // 100% fit in a container
    closed: 'accordion', // Start closed if in accordion view
    activate: function(event) { // Callback function if tab is switched
    var $tab = $(this);
    var $info = $('#tabInfo');
    var $name = $('span', $info);
    $name.text($tab.text());
    $info.show();
    }
    });
    $('#verticalTab').easyResponsiveTabs({
    type: 'vertical',
    width: 'auto',
    fit: true
    });
  });
//top-film
    $("#owl-demo").owlCarousel({

    autoPlay: 3000, //Set AutoPlay to 3 seconds
      autoPlay : true,
      navigation :true,

      items : 5,
      itemsDesktop : [640,4],
      itemsDesktopSmall : [414,3]

    });

//show
          $(".dropdown").hover(
            function() {
              $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
              $(this).toggleClass('open');
            },
            function() {
              $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
              $(this).toggleClass('open');
            }
          );

  (function() {
    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
    po.src = 'https://apis.google.com/js/platform.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
    })();

    (function(d, s, id) {
                  var js, fjs = d.getElementsByTagName(s)[0];
                  if (d.getElementById(id)) return;
                  js = d.createElement(s); js.id = id;
                  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.7";
                  fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));

   $("html, body").delay(1000).animate({
    scrollTop: $("#main-content").offset().top
  }, 500);

//ckeditor
  if ($('textarea').length > 0) {
    var data = $('.ckeditor');
    $.each(data, function(i) {
      CKEDITOR.replace(data[i].id)
    });
  }
//rate
  $('.review-rating').raty({
    readOnly: true,
    score: function () {
      return $(this).attr('data-score');
    },
    path: '/assets/'
  });

  $('.rating-form').raty({
    path: '/assets/',
    scoreName: 'review[star]'
  });

  $('.average-review-rating').raty({
    readOnly: true,
    path: '/assets/',
    score: function () {
      return $(this).attr('data-score')
    }
  });
//display form rivew
  $('#my-link').on('click', function (event) {
    var x = document.getElementById("myDIV");
    if (x.style.display === "none") {
      x.style.display = "block";
    }
  });

   $('.my-link1').on('click', function (event) {
    var x = document.getElementById("myDIV");
    if (x.style.display === "block") {
      x.style.display = "none";
    }
  });


//facebook
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '809701416068949',
      cookie     : true,
      xfbml      : true,
      version    : 'v3.3'
    });

    FB.AppEvents.logPageView();

  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));

})
