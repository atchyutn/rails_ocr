class DefaultController < ApplicationController
  include OcrSpace
  require 'ocr_space'

  def index
    url = params[:url]
    resource = OcrSpace::Resource.new(apikey: Rails.application.secrets.OCR_API_KEY)
    @result = resource.clean_convert(url: url)
    @image_url = url
  end
end