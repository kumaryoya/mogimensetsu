require 'net/http'
require 'json'

api_url = 'https://www.jma.go.jp/bosai/forecast/data/overview_forecast/130000.json'

uri = URI(api_url)
response = Net::HTTP.get(uri)
forecast_data = JSON.parse(response)

puts "発表者: #{forecast_data['publishingOffice']}"
puts "報告日時: #{forecast_data['reportDatetime']}"
puts "対象地域: #{forecast_data['targetArea']}"
puts "ヘッドライン: #{forecast_data['headlineText']}"
puts "詳細: #{forecast_data['text']}"
