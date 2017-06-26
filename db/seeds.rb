# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'GPS_drift_data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'utf-8')
csv.each do |row|
  t = Drifting.new
  t.num = row['num']
  t.time = row['time']
  t.key = row['key']
  t.East_longitude = row['East_longitude']
  t.North_latitude = row['North_latitude']
  t.save
end

puts "#{Drifting.count} rows in the drifting table"