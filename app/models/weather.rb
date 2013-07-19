class Weather < ActiveRecord::Base
  attr_accessible :day, :max, :min

  def weather_chart_data
    Weather.all.each do |r|
      "day: #{r.day}, min: #{r.min}, max: #{r.max}"
    end
  end
end


# jQuery ->
#   Morris.Line
#     element: 'climate'
#     data: weather_chart_data
#     data: [
#           {day: '1374130800', min: 53.85, max: 64.69 }
#           {day: '1374217200', min: 53.89, max: 67.79 }
#           {day: '1374303600', min: 54.8, max: 70.63 }
#           {day: '1374390000', min: 53.66, max: 67.96 }
#           {day: '1374476400', min: 54.83, max: 76.06 }
#           {day: '1374562800', min: 55.79, max: 57.98 }
#           {day: '1374649200', min: 55.67, max: 57.29 }
#           {day: '1374735600', min: 56.29, max: 56.32 }
#            ]
#     xkey: 'day'
#     ykeys: ['min','max']
#     labels: ['Min Temp', 'Max Temp']
