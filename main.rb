require "sinatra"

get '/api/fibindex/:index' do
    getFibonacciValueFromIndex(params['index'].to_i)
end

 
def getFibonacciValueFromIndex(value)
    index = (1.6180339**value - (-0.6180339)**value) / 2.236067977
    return index.round().to_s
end