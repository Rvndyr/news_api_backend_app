class PagesController < ApplicationController
  def pages_index
    response = HTTP.get("https://newsapi.org/v2/everything?q=Apple&from=2021-06-15&sortBy=popularity&apiKey=#{Rails.application.credentials.news_api_key}")
    articles = JSON.parse(response.body)["articles"]
    render json: articles

  end
end
