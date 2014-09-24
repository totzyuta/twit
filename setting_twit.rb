require 'oauth'
require 'oauth/consumer'
require './config.rb'
require 'twitter'
require 'pp'


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

io = File.open("setting.rb", "w")
io.puts "ACCESS_TOKEN = \"#{@access_token.token}\""
io.puts "ACCESS_TOKEN_SECRET = \"#{@access_token.secret}\""
io.close

puts "================="
puts "Setting Completed"
puts "================="
