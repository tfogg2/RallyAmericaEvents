$(document).ready(function(){
  $("input.datepicker").each(function(input) {
    $(this).datepicker({
      dateFormat: "yy-mm-dd",
      altField: $(this).next()
    })
  })

  // $('.datepicker').datepicker();
  //
  // var date_input=$('input.event_time_frame'); //our date input has the name "date"
  //     var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
  //     var options={
  //       format: 'mm/dd/yyyy',
  //       container: container,
  //       todayHighlight: true,
  //       autoclose: true,
  //     };
  //     date_input.datepicker(options);
  //
  //   $("input.event_time_frame").each(function(input) {
  //   $(this).datepicker({
  //     dateFormat: "yy-mm-dd",
  //     altField: $(this).next()
  //   })
  //
  //   // If you use i18n-js you can set the locale like that
  //   $(this).datepicker("option", $.datepicker.regional[I18n.currentLocale()]);
  // })
  //

  // $('.dropdown-toggle').click(function(){
  //   $(this).dropdown();
  // });

  // function dropdown(){
  //   $('.dropdown-content').hide();
  //   $('.dropdown').on('click', function(){
  //     $('.dropdown-content').show();
  //     $(this).addClass('active-icon');
  //     $('.active-icon').on('click', function(){
  //       $('.dropdown').removeClass('active-icon');
  //       $('.dropdown-content').removeClass('active-content');
  //       $('.dropdown-content').hide();
  //     });
  //     $('.dropdown-content').addClass('active-content');
  //   });
  // };
  //
  // $('.dropdown').on('click', dropdown());


  // jQuery(document).ready(function (e) {
  //     function t(t) {
  //         e(t).bind("click", function (t) {
  //             t.preventDefault();
  //             e(this).parent().fadeOut()
  //         })
  //     }
  //     e(".dropdown-toggle").click(function () {
  //         var t = e(this).parents(".button-dropdown").children(".dropdown-menu").is(":hidden");
  //         e(".button-dropdown .dropdown-menu").hide();
  //         e(".button-dropdown .dropdown-toggle").removeClass("active");
  //         if (t) {
  //             e(this).parents(".button-dropdown").children(".dropdown-menu").toggle().parents(".button-dropdown").children(".dropdown-toggle").addClass("active")
  //             $('.dropdown').addClass('active-dropdown');
  //         }
  //         console.log('click');
  //     });
  //     e(document).bind("click", function (t) {
  //         var n = e(t.target);
  //         if (!n.parents().hasClass("button-dropdown")){
  //           e(".button-dropdown .dropdown-menu").hide()
  //           $(".dropdown").removeClass('active-dropdown');
  //         }
  //     });
  //     e(document).bind("click", function (t) {
  //         var n = e(t.target);
  //         var dropdown = $('.dropdown');
  //         if (!n.parents().hasClass("button-dropdown")){
  //           e(".button-dropdown .dropdown-toggle").removeClass("active");
  //           e(dropdown).removeClass('active-dropdown');
  //         }
  //
  //     })
  // });
  $('.black').hide();
  $('.social-container').mouseenter(function(){
    $(this).addClass('social-hover');
    $(this).children('.op').hide();
    $(this).children('.black').show();
    $(this).mouseleave(function(){
      $(this).removeClass('social-hover');
      $(this).children('.op').show();
      $(this).children('.black').hide();
    })
  });


  $('.facebook').mouseenter(function(){
    $('.fb-bottom').hide();
    $('.fb-bottom-yellow').show();
    $(this).mouseleave(function(){
      $('.fb-bottom-yellow').hide();
      $('.fb-bottom').show();
    });
  });
  $('.youtube').mouseenter(function(){
    $('.youtube-bottom').hide();
    $('.youtube-bottom-yellow').show();
    $(this).mouseleave(function(){
      $('.youtube-bottom-yellow').hide();
      $('.youtube-bottom').show();
    });
  });

  $(function() {

    var special = ['boring'];

    // Toggle Nav on Click
    $('.dropdown-toggle').click(function() {

      var transitionClass = $(this).data('transition');

      if ($.inArray(transitionClass, special) > -1) {
        $('body').removeClass();
        $('body').addClass(transitionClass);
      } else {
        $('body').removeClass();
        $('#site-canvas').removeClass();
        $('#site-canvas').addClass(transitionClass);
      }

      $('#site-wrapper').toggleClass('show-nav');

      return false;

    });

  });
  // $('.dropdown').mouseenter(function(){
  //   $('.menu-icon').addClass('menu-hover');
  // }) $(this).mouseleave(function(){
  //   $('.menu-icon').removeClass('menu-hover');
  // });


});
