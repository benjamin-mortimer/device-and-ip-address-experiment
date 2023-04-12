require 'sinatra'

get '/' do
    @http_x_real_ip = request.env.fetch("HTTP_X_REAL_IP") 
    @http_user_agent = request.env.fetch("HTTP_USER_AGENT")
    erb :index
end

get '/full-request-data' do
    @request_data = request.env
    erb :request_data
end