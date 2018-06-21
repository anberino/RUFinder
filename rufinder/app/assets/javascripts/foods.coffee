# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('input:checkbox').change ->
  	url = "/query/?q=true"
  	i = 0

  	$('input:checkbox').each (index) ->
  		if $(@).prop('checked')
  			i = i+1
  			url = url.concat "&id#{index}=true"

  	if i == 0 
  		url = "/query"

  	$.ajax url,
  		type: 'GET'
  		dataType: 'html'
  		error: (jqXHR, textStatus, errorThrown) ->
  			$('body').append "AJAX Error "
  		success: (data, textStatus, jqXHR) ->
  			$('#result').html null
  			$('#result').append data