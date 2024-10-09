document.addEventListener "DOMContentLoaded", ->
  cityNameInput = document.getElementById('city-name')
  form = document.getElementById('city-search-form')

  cityNameInput.addEventListener 'input', ->
    form.requestSubmit()

  handleStateChange = ->
    cityNameInput.value = '' 
    form.requestSubmit() 

  stateSelect = document.getElementById('state-select')
  stateSelect.addEventListener 'change', handleStateChange
  