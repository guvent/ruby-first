require 'net/http'

# Net::HTTP.get('https://yahoo.com', '/')

uri = URI("http://www.w3.com")

# res = Net::HTTP.get(uri)

# puts res


# params = { :page => 10 }

# uri.query = URI.encode_www_form(params)

# res = Net::HTTP.get_response(uri)

# puts res.body if res.is_a?(Net::HTTPSuccess)

# Net::HTTP.start(uri.host, uri.port) do |http|
#     req = Net::HTTP::Get.new uri
    
#     res = http.request req

#     puts res["Set-Cookie"]
#     puts res["Content-Type"]
    
#     puts res.code
#     puts res.message
#     puts res.class.name
#     puts res.body if res.is_a?(Net::HTTPSuccess)
# end


# def fetch(url, limit = 10)

#     raise ArgumentError, "limit invalid!" if limit == 0

#     Net::HTTP.start(url.host, url.port) do |http|
        
#         req = Net::HTTP::Get.new url
        
#         res = http.request req

#         case res
#         when Net::HTTPSuccess
#             puts res.code
#         when Net::HTTPRedirection
#             location = res["location"]
#             warn "redirected to: #{location}"
            
#             fetch(URI(location), limit-1)
#         else
#             puts res.value
#         end
#     end
# end

# fetch(uri, 10)

Net::HTTP.new(uri.host, uri.port, proxy_addr="127.0.0.1", proxy_port="8888").start do |http|
    req = Net::HTTP::Get.new uri
    req['X-Quvven-ID'] = "deneme"
    
    res = http.request req
    
    puts res.code
    puts res.message
    puts res.class.name
    puts res.body if res.is_a?(Net::HTTPSuccess)
end



