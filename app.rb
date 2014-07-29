#encoding: utf-8
require 'rubygems'
require 'tweetstream'
require 'mongo'
require 'eventmachine'

db = Mongo::Connection.from_uri(ENV["DATABASE_URL"]).db('enokawa')
@items = db.collection('items')

TweetStream.configure do |config|
  config.consumer_key = ENV["MBCK"]
  config.consumer_secret = ENV["MBCS"]
  config.oauth_token = ENV["MBAT"]
  config.oauth_token_secret = ENV["MBATS"]
  config.auth_method = :oauth
  config.parser = :json_pure
end

EM.run do
  client = TweetStream::Client.new

  def write_to_mongolab(status)
    EM.defer do
      item = {
        :id_str => status.id_str,
        :screen_name => status.user.screen_name,
        :profile_image_url => status.user.profile_image_url,
        :text => status.text,
        :created_at => status.created_at
      }
      @items.insert(item)
    end
  end

  client.track('#MacFriends') do |status|
		puts "#{status.text}"
    write_to_mongolab(status)
  end
end
