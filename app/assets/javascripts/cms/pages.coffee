# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->
  form_elements = "#internal_link": "Internal Link", "#external_link": "External Link", "#document": "Document", "#page_template": "Template"
  for elementID, elementText of form_elements 
    $(elementID).hide() if $('#cms_page_page_type').val() != elementText
  $('#cms_page_page_type').change ->
    selected = $('#cms_page_page_type :selected').text()
    for elementID, elementText of form_elements 
      $(elementID).hide() if elementText isnt selected
      $(elementID).children('input').val('') if elementText isnt selected
      $(elementID).show() if elementText is selected
     