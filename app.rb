require "sinatra"
require "sinatra/reloader"

get("/howdy")do
erb(:hello)
end

get("/goodbye")do
erb(:bye)
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num ** 2

  erb(:square_results)
end

get("/") do
  erb(:new_square_calc)
end

get("/square_root/new") do
  erb(:square_root_new)
end

get("/square_root/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num ** 0.5

  erb(:square_root_results)
end

get("/random/new") do
  erb(:random)
end

get("/random/results") do
  @min_num = params.fetch("user_min").to_f
  @max_num = params.fetch("user_max").to_f

  @the_result = rand(@min_num..@max_num)

  erb(:random_results)
end


get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do

  @apr = params.fetch("user_apr").to_f
  @years = params.fetch("user_years").to_i
  @pv = params.fetch("user_pv").to_f

  @apr_divided_by_100 = @apr / 100 
  @r = @apr_divided_by_100 / 12
  @n = @years * 12

  @numerator = @r * @pv
  @denom = (1-(1+ @r)**-@n)

  @payment = @numerator / @denom

  erb(:payment_results)
end
