# info about how I should do http://yehudakatz.com/2010/01/10/activemodel-make-any-ruby-object-feel-like-activerecord/
require 'active_model'

class News
  include ActiveModel::Validations
  
  validates_presence_of :url, :type_of_media
  
  attr_accessor :header, :source_name, :summary, :geo,  :url, :created_at, :type_of_media  
  
  def initialize(attributes = {})
    @header = attributes[:header]
    @source_name = attributes[:source_name]
    @summary = attributes[:summary] 
    @geo = attributes[:geo]
    @url = attributes[:url]
    @created_at = attributes[:created_at]
    @type_of_media = attributes[:type_of_media]
  end 
  
  def read_attribute_for_validation(key)
      @attributes[key]
  end
  
end
  