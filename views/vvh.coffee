$("#searchForm").submit (event) ->
  event.preventDefault()
  $form = $(this)
  term = $form.find("input[name=\"s\"]").val()
  url = $form.attr("action")
  $.post url,
    s: term,
    (data) ->
        content = $(data).find("#content")
        $("#result").empty().append content
