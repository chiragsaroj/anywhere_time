require 'net/http'
require 'json'
require 'date'

class AnywhereTime
  API_URL = "http://worldtimeapi.org/api/timezone".freeze

  def self.get_ip_address
    response = Net::HTTP.get_response(URI('https://api.ipify.org?format=json'))
    body = JSON.parse(response.body)
    body["ip"]
  end

  def self.current_time
    ip_address = get_ip_address
    response = Net::HTTP.get_response(URI("http://worldtimeapi.org/api/ip/#{ip_address}"))
    body = JSON.parse(response.body)
    d = DateTime.parse(body["datetime"])
    d.strftime('%I:%M:%S %p')
  end

  def self.timezones(search: nil)
    response = Net::HTTP.get_response(URI(API_URL))
    body = JSON.parse(response.body)
    if search
      body.filter {|item| item.include?(search.capitalize)}
    else
      body
    end
  end

  def self.get_area_time(area)
    area_url = API_URL + "/#{area}"
    response = Net::HTTP.get_response(URI(area_url))
    body = JSON.parse(response.body)
    d = DateTime.parse(body["datetime"])
    d.strftime('%I:%M:%S %p')
  end
end