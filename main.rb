require "sinatra"
require "sinatra/json"

$cache = {}

get '/api/fibindex/:index' do
    cached = checkCache(params['index'])

    if cached != nil then
        puts "got cached value"
        return json :value => cached
    end

    return json :value => getFibonacciValueFromIndex(params['index'].to_i)
end

 
def getFibonacciValueFromIndex(index)
    value = ((1.6180339**index - (-0.6180339)**index) / 2.236067977).round()
    $cache[index.to_s] = value
    return value
end

def checkCache(index)
    puts index.to_s
    return $cache[index]
end