# encoding: utf-8

require 'twitter'
require 'net/http'
require 'uri'
require 'json'


# ログイン
client = Twitter::REST::Client.new do |config|
  config.consumer_key = 'mVYyeyXFydBtisgTKHxoJThjw'
  config.consumer_secret = 'IyJXS9i1YAuyMyM4gdvFmANgblkI9StLRgVMTJ2rBNifrzPj10'
  config.access_token = '4900130930-vueew83PEBUCxAeHKVQweNEdlsuNPhREtY0iayn'
  config.access_token_secret = 'yltHgujLTP5uroivixElIsriX4oKiNBYjfQN4t1CRW5ER'
end

tweet = "こんばんは!"

client.update(tweet, options={})

=begin
client.mentions(options={}).take(21).each do |tweet|
  puts tweet.text
end
=end




