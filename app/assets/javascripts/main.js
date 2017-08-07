$(document).ready(function(){

  $('.datepicker').datepicker();

  var date_input=$('input.event_time_frame'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);

    $("input.event_time_frame").each(function(input) {
    $(this).datepicker({
      dateFormat: "yy-mm-dd",
      altField: $(this).next()
    })

    // If you use i18n-js you can set the locale like that
    $(this).datepicker("option", $.datepicker.regional[I18n.currentLocale()]);
  })


  $('.dropdown-toggle').dropdown();


});
