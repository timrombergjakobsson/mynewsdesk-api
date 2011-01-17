require 'open-uri'

class NewsController < ApplicationController
  # GET /NewsItems   
  def index
    
    if params[:page].nil?
          offset = 0
          @page = 2
        else
          @page = params[:page].to_i+1
          offset = params[:page].to_i*20-20
        end
        
    apiKey = ("http://www.mynewsdesk.com/partner/api/1_0/a9e6a7533e996a5c2a3275d5b393a4b0/channel/290/material/list/")
    doc = Nokogiri::XML(open(apiKey).read) 
    @stories = doc.css("item").map do |n|
      h = {}
      %w(header source_name summary url geo created_at type_of_media).each do |key|
        h[key.to_sym] = n.css(key).text
      end
      News.new(h)
    end
  end
end                 
