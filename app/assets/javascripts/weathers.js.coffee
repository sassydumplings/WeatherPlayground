# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  Morris.Line
    element: 'climate'
    data: [
      {day: 1374130800, min: 53.85, max: 64.69}
      {day: 1374217200, min: 53.89, max: 67.79}
      {day: 1374303600, min: 54.8, max: 70.63}
      {day: 1374390000, min: 53.66, max: 67.96}
      {day: 1374476400, min: 54.83, max: 76.06}
      {day: 1374562800, min: 55.79, max: 58.98}
      {day: 1374649200, min: 55.67, max: 59.29}
      {day: 1374735600, min: 52.29, max: 56.32}
    ]
    xkey: 'day'
    ykeys: ['min','max']
    labels: ['Min Temp','Max Temp']
    hideHover: true
