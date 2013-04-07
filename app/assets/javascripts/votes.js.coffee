$ ->

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

  # Build the chart
  $("#container").highcharts
      chart:
        plotBackgroundColor: null
        plotBorderWidth: null
        plotShadow: false

      title:
        text: "Referendum Bariloche"

      tooltip:
        pointFormat: "{series.name}: <b>{point.percentage}%</b>"
        percentageDecimals: 1

      plotOptions:
        pie:
          allowPointSelect: true
          cursor: "pointer"
          dataLabels:
            enabled: true
            color: "#000000"
            connectorColor: "#000000"
            formatter: ->
              "<b>" + @point.name + "</b>: " + @percentage + " %"

      series: [
        type: "pie"
        name: "Porcentaje"
        data: [["Sí", parseInt($("#votes_yes").html())], ["No", parseInt($("#votes_no").html())]]
      ]

