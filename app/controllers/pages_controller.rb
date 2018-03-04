class PagesController < ApplicationController
  $count=0
  def fortune_method
    fortune=["You are going to get an amaizing car", "life is amaizing dont let bills hold you from that next vacation", "Go for whatever it is that you are planning to do chances are you will fail"]
    x = rand(0..2)
    render json: fortune[x]
  end

  def loto_method
    loto=[]
    6.times do 
      x= rand(66)
      loto << x
    end
    render json: {message:"loto number #{loto}"}
  end 

  def count_method 
  
    $count = $count + 1 
    render json:{number_of_visit:$count}
  end
end
