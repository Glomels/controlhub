require "sinatra"

get '/api/fibindex' do
    getFibonacciValueFromIndex(3).to_s
end

 
def getFibonacciValueFromIndex(value)
    index = (1.6180339**value - (-0.6180339)**value) / 2.236067977
    return index.round()
end