require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    @input = params[:answer]
    @letters = params[:letters]
    url = "https://wagon-dictionary.herokuapp.com/#{@input}"
    answer_serialized = open(url).read
    @answer = JSON.parse(answer_serialized)
  end
end
