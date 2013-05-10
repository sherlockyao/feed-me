jQuery -> 
  $('div.user_profile').bind 'click', (event) =>
    id = event.currentTarget.id.substring 5
    name = event.currentTarget.innerText
    $.cookie('current_user', name, { expires: 30, path: '/' })
    $.cookie('current_id', id, { expires: 30, path: '/' })
    window.location.href = $('a#back_link').attr("href");
