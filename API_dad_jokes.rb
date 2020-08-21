#require 'pry'
require_relative './environment.rb'

class Dad

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body 
    end

    def parse_json
       dads = JSON.parse(get_response_body)["attachments"]
            dads.each.map do |joke| 
             joke.values[0]
        end 
    end

end