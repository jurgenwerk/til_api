class ApplicationController < ActionController::API
  
  def til
    @scraper ||= Scraper.new
    render json: { til: @scraper.get_a_title }
  end
end
