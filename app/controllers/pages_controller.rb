class PagesController < ApplicationController

  def fortune_method
    fortune=["You are going to get an amaizing car", "life is amaizing dont let bills hold you from that next vacation", "Go for whatever it is that you are planning to do chances are you will fail"]
    x = rand(3)
    index= x - 1 
    render json: fortune[index]
  end

  def loto_method
    loto=[]
    6.times do 
      x= rand(66)
      loto << x
    end
    render json: {message:"loto number #{loto}"}
  end 


  def bottles_method
    beers= 99
    lyrics = [ ]
    100.times do 
      x= beers - 1
      lyrics << "#{beers} bottles of beer on the wall, #{beers} bottles of beer.
 Take one down and pass it around, #{x} bottles of beer on the wall."
    end
    render json:{lyrics:} 

  end

end
