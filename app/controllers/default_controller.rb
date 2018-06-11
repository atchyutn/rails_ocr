class DefaultController < ApplicationController
  include OcrSpace


  def index
    # puts hello
    OcrSpace
  end
  # puts "\n\n\n #{OcrSpace.hello} \n\n\n"

  # puts OcrSpace::hello
end