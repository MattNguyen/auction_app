$(document).ready ->
  $('#hide_show_feed').click -> 
    if $('#navup').css("visibility") == "visible"
      $('#update_feed_area').slideUp('slow', ->
        $('#navup').css("visibility", "hidden")
        $('#navdown').css("visibility", "visible")        
        )
    else if $('#navup').css("visibility") == "hidden"
      $('#update_feed_area').slideDown('slow', ->
        $('#navup').css("visibility", "visible")
        $('#navdown').css("visibility", "hidden")        
        )
    return false
