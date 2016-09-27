require 'sinatra'
require_relative "add.rb"
get '/' do 
	erb :get_name
end

post '/name' do
	name = params[:user_name]
	redirect '/age?user_name=' + name
end

get '/age' do
	name = params[:user_name]
	erb :get_age, :locals => {:name => name}
end
post '/age' do
name = params[:retrieved_name]
age = params[:age]
  redirect '/3_fav_nums?name=' + name + "&user_age=" + age
 end

get '/3_fav_nums' do
	name = params[:name]
	age = params[:age]
	erb :get_fav, :locals => {:name => name, :age => age}
end
post '/fav_num' do
    name = params[:user_name]
    age = params[:age]
    fav1 = params[:user_fav1]
    fav2 = params[:user_fav2]
    fav3 = params[:user_fav3]
  sum = add(fav1.to_i, fav2.to_i, fav3.to_i)

  # "so, #{name}, you are #{age} you 3 favorite numbers are #{fav1}, #{fav2}, #{fav3}" "#{sum}"

end
  
# if sum.to_i < age.to_i
#     "Hello #{name}Your age is #{age} and greater than your three fav numbers which total #{sum}."#add_func.rb

#     elsif sum.to_i > age.to_i
#         "Hello #{name} Your age is #{age}  and is less than your three fav numbers #{sum}."
#     else
#         "hello #{name} Your age #{age} is exactly equal to the sum of your three favorite numbers which is  #{sum}."
# end
# end




