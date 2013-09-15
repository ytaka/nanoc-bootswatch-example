jQuery( ($) ->
  if $(document).width() >= 992
    $("div#sidebar").exFlexFixed({
      container: "#container-main-sidebar"
    })
)
