$ ->
  $(document).ready ->
    $('#myTab a').click(e) -> 
      e.preventDefault()
      $('#myTab a:first').tab('show')