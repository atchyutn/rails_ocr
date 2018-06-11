class DefaultController < ApplicationController
  include OcrSpace
  require 'ocr_space'

  def index
    resource = OcrSpace::Resource.new(apikey: "f1a06ec2ec88957")

    url = "http://i61.tinypic.com/dh8va9.jpg"

    @result = resource.clean_convert(url: url)
  end
end