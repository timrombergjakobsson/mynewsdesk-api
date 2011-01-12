require 'open-uri'

class NewsController < ApplicationController
  # GET /NewsItems
  
  def index
    @apiKey = ("http://www.mynewsdesk.com/partner/api/1_0/a9e6a7533e996a5c2a3275d5b393a4b0/channel/290/material/list/")
    doc = Nokogiri::XML(open(@apiKey).read) 
        
    @news = doc.css('query').map do |n|
      h = {}
      %w(header source_name summary url geo created_at type_of_media).each do |key|
        h[key.to_sym] = n.css(key).text
      end
      News.new(h)
    end
  end
end