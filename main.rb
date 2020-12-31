require "sinatra"

get '/api/fibindex/:index' do
    getFibonacciValueFromIndex(params['index'].to_i)
end

 
def getFibonacciValueFromIndex(index)
    value = (1.6180339**index - (-0.6180339)**index) / 2.236067977
    return value.round().to_s
end