jQuery -> 
  credit = (amount) ->
    $('#amount').val(amount)
    $('#creditor_id').val($.cookie('current_id'))
    $('#credit_form').submit();

  $('div.amount').bind 'click', (event) =>
    id = event.currentTarget.id
    credit id.substring 7 if id

  $('#custom_button').bind 'click', (event) =>
    amount = $('#custom_amount').val()
    credit amount
