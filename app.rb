require "sinatra"
require "sinatra/reloader"

get("/") do

  erb(:square)
end

get("/square/new") do

  erb(:square)
end

get("/square/results") do
  @inputnum=params.fetch("number").to_f
  @output=@inputnum.to_f**2
  erb(:squareresults)
end


get ("/square_root/new") do
 
 erb(:squareroot)
end

get("/square_root/results") do

  @inputnum=params.fetch("number").to_f
  @output=@inputnum.to_f**(1/2)
  erb(:squareroot_results)
end

get("/random/new") do
  erb(:random)
end

get("/random/results") do
  @min=params.fetch("min").to_f
  @max=params.fetch("max").to_f
  @random=rand(@min...@max).to_f
  erb(:random_results)
end


get ("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @n=params.fetch("year").to_i
  @pv=params.fetch("principal").to_f
  @r=params.fetch("apr").to_f
  @numerator = (@r/100/12)*@pv
  @denominator = (1-(1+@r/100/12)**(-1*@n*12))
  @payment =@numerator/@denominator
  erb(:payment_results)
end
