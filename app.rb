require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end
  
  # Code your final two routes here:
  
  get '/goodbye/:name' do
    @name = all_the_names.select do |name|
      name.name = params[:name]
    end.first 
    erb :'/names/show.html'
  end 
  
  get '/multiply/:num1/:num2' do 
  end 

end