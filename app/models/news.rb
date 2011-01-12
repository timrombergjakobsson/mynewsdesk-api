require 'active_model'

class News
  include ActiveModel::Validations
  
  validates_presence_of :url, :type_of_media
  
  attr_accessor :header, :source_name, :summary, :geo :url, :created_at, :type_of_media  
  
  def initialize(attributes = {})
    @header = attributes[:header]
    @source_name = attributes[:source_name]
    @summary = attributes[:summary] 
    @geo = attributes[:geo]
    @url = attributes[:url]
    @created_at = attributes[:created_at]
    @type_of_media = attributes[:type_of_media]
  end
  