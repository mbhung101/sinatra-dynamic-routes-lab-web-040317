require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    sqr = params[:number].to_i * params[:number].to_i
    sqr.to_s
  end

  get "/say/:number/:phrase" do
    (params[:phrase]+ "\n") *params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.join(" ") + "."
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
        (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == "subtract"
        (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operation] == "multiply"
        (params[:number1].to_i * params[:number2].to_i).to_s
    elsif params[:operation] == "divide"
        (params[:number1].to_i / params[:number2].to_i).to_s
    end
  end
end
