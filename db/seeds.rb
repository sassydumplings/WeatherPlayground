# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
file_path = File.join(Rails.root, "public", "sf-2.csv")
# file_path = Rails.root.join('public', 'zips.csv').to_s

climate = Roo::Spreadsheet.open(file_path).each({
          :day => "time",
          :min => "temperatureMin",
          :max => "temperatureMax"}) do |row|
                      Weather.create(
                      :day => row[:day],
                      :min => row[:min],
                      :max => row[:max]
                      )
                end


