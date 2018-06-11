class DefaultController < ApplicationController
  include OcrSpace
  require 'ocr_space'

  def index
    url = params[:url]
    resource = OcrSpace::Resource.new(apikey: Rails.application.secrets.OCR_API_KEY)

    # url = "https://i.stack.imgur.com/t3qWG.png"

    @result = resource.clean_convert(url: url)
  end
end