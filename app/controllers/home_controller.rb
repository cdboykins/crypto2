class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins =[ "BTC", "ADA","ETH", "XLM", "STEEM",]
  end

  def about
  end
  def lookupform
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @lookupform_coin = JSON.parse(@response)
    @symbol = params[:sym]
  if @symbol
    @symbol = @symbol.upcase
  end

  if @symbol == ""
    @symbol = "you did not enter a currency"
  end
  # if @symbol != @lookupform_coin
  #   @symbol = "Incorrect symbols entered"
  # end
end
end

