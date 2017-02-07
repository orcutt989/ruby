require 'csv'

csv_data = File.read('test.csv')

data_array = CSV.parse(csv_data, converters: :numeric)

data_array.each_with_object(Hash.new(0)) { |(k, v), h| h[k] += v }

p data_array