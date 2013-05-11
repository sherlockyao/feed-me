jQuery ->
  if $.cookie('current_user')
    $('#current-user').text('I am ' + $.cookie('current_user'))
    $('div.account').bind 'click', (event) =>
      id = event.currentTarget.id.substring 5
      window.location.href = '/cashflow/' + id;
  else
    $('#current-user').hide()