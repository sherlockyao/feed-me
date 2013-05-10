jQuery ->
  if $.cookie('current_user')
    $('#current-user').text('I am ' + $.cookie('current_user'))
  else
    $('#current-user').hide()