$(document).ready(function(){
 $.ajax(
  '/beverages.json',
  {
    success: function(results){
      var graph_data = $.parseJSON(results).datalist;
      var body = $('body');
      var chart_colors = ['#6f4e37', 'skyblue', '#6F0564','gold'];

      //
      if (bvrg.scope == "week") {
        body.append('<div id="beverage_graph_week" class="graph">');

        Morris.Line({
          parseTime: false,
          element: 'beverage_graph_week',
          data: graph_data,
          xkey: 'day',
          ykeys: ['coffee', 'water', 'wine', 'energydrink'],
          labels: ['Coffee', 'Water', 'Wine', 'Energy Drink'],
          lineColors: chart_colors,
          hideHover: true
        });