class DefaultController < ApplicationController
  include OcrSpace
  require 'ocr_space'

  def index
    url = params[:url]
    resource = OcrSpace::Resource.new(apikey: "f1a06ec2ec88957")

    # url = "https://i.stack.imgur.com/t3qWG.png"

    @result = resource.clean_convert(url: url)
  end
end