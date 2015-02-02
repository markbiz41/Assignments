require 'net/http'
uri = URI('http://charmedscripts.tv/thank_you_for_not_morphing.htm')
response = Net::HTTP.get(uri)
file = File.new("script.txt","w")
file.write(response)
file.close
