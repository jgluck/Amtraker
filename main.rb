require 'sinatra'
require 'slim'

url = "http://dixielandsoftware.net/cgi-bin/gettrain.pl?seltrain="
url2 = "&selyear="
url3 = "&selmonth="
url4 = "&selday="


get '/' do	
	'Train Spotting'
end

get '/:trainno/?:year?/?:month?/?:day?' do
	time = Time.new
	train = params[:trainno]
	year = params[:year]
	month = params[:month]
	day = params[:day]
	

	year ||= time.year.to_s
	month ||= time.strftime("%m")
	day ||= time.strftime("%d")

	redirect to(url + train + url2 + year + url3 + month + url4 + day)

end
