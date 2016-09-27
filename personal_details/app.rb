require 'sinatra'

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
  "Hello #{name} your are #{age}"
 
 end

# get '/3_fav_nums' do
# 	3_fav_nums = params[:users_fav]
# 	erb :get_fav, :locals => [:name => name, :number]
# end
# # post '/3_fav_nums' do
# # 	name = params[:users_fav]
# # 	name = params[:users_name]
# post '/fav_num' do
#     name = params[:name]
#     age = params[:age]
#     fav1 = params[:user_fav1]
#     fav2 = params[:user_fav2]
#     fav3 = params[:user_fav3]
#   sum = add(fav1.to_i, fav2.to_i, fav3.to_i)
# end
  
# if sum.to_i < age.to_i
#     "Hello #{name}Your age is #{age} and greater than your three fav numbers which total #{sum}."
#     elsif sum.to_i > age.to_i
#         "Hello #{name} Your age is #{age}  and is less than your three fav numbers #{sum}."
#     else
#         "hello #{name} Your age #{age} is exactly equal to the sum of your three favorite numbers which is  #{sum}."
# end
# end




