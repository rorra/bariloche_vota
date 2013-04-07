# Radialize the colors
Highcharts.getOptions().colors = Highcharts.map(Highcharts.getOptions().colors, (color) ->
  radialGradient:
    cx: 0.5
    cy: 0.3
    r: 0.7

  stops: [[0, color], [1, Highcharts.Color(color).brighten(-0.3).get("rgb")]] # darken
)

Highcharts.setOptions(
    colors: ['#50B432', '#FF0000', '#ED561B', '#DDDF00', '#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4']
)