jQuery -> 
  credit = (amount) ->
    $('#amount').val(amount * 0.9)
    $('#creditor_id').val($.cookie('current_id'))
    $('#credit_form').submit();

  $('div.amount').bind 'click', (event) =>
    id = event.currentTarget.id
    credit id.substring 7 if id

  $('#custom_button').bind 'click', (event) =>
    amount = $('#custom_amount').val()
    credit amount

  $('#payback_link').bind 'click', (event) =>
    $('#creditor_id').val($.cookie('current_id'))
    $('#credit_form').attr('action', '/cashflow/show');
    $('#credit_form').submit();
    
