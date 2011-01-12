require 'open-uri'

class NewsController < ApplicationController
  # GET /NewsItems
  
  def index
    doc = Nokogiri::XML(open("http://www.mynewsdesk.com/partner/api/1_0/a9e6a7533e996a5c2a3275d5b393a4b0/channel/290/material/list/").read) 
    
    puts doc.to_s
    
    @news = [] 
       
    doc.css("news").each do |n|
      header = n.css("header").text
      source_name = n.css("source_name").text  
      summary = n.css("summary").text 
      url = i.css("url").text 
      geo = i.css("geographic_areas geographic_area:first-child").text
      created_at = i.css("created_at").text
      type_of_media = i.css("type_of_media").text
      
      @news << News.new(
                        :header => header,
                        :source_name => source_name,
                        :summary => summary,
                        :url => url,
                        :geo => geo,  
                        :created_at => created_at,
                        :type_of_media => type_of_media
                        )
    end
  end
end