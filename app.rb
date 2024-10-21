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

  # Ensure @min_num is smaller than @max_num
  @the_result = rand(@min_num..@max_num)

  erb(:random_results)
end
