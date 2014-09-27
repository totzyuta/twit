require 'oauth'
require 'oauth/consumer'
require 'twitter'
require 'pp'
require 'json'

CONSUMER_KEY = "TvEDulP9wjxcAkpPS2r1ux4Fr"
CONSUMER_SECRET = "t3AO41ngBpr4I30I0bkYNFXXlQtjCwahAgNXoiEtYHkaWxtIcu"

@consumer=OAuth::Consumer.new( CONSUMER_KEY, CONSUMER_SECRET, {
  :site=>"https://api.twitter.com"
})

@request_token=@consumer.get_request_token
@request_token.authorize_url

URL =  @request_token.authorize_url

system "open #{URL}"

print "Please Enter Your PIN: "

# the pin is supposed to be int
pin = (gets.chomp).to_i

@access_token = @request_token.get_access_token(:oauth_verifier => pin)

endpoint = OAuth::AccessToken.new(@consumer, @access_token.token, @access_token.secret)

# GET user account information as json file
response = endpoint.request(:get, 'https://api.twitter.com/1.1/account/settings.json')
result = JSON.parse(response.body)
p result

io = File.open("setting_#{@access_token.token}.rb", "w")
io.puts "ACCESS_TOKEN_#{@access_token.token} = \"#{@access_token.token}\""
io.puts "ACCESS_TOKEN_SECRET_#{@access_token.token} = \"#{@access_token.secret}\""
io.close

puts "================="
puts "Setting Completed"
puts "================="
