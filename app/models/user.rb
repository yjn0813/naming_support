class User < ActiveRecord::Base
  
  # def self.create_from_auth!(auth)
  #   create! do |user|
  #     user.provider = auth[:provider]
  #     user.uid = auth[:uid]
  #     user.name = auth[:info][:name]
  #     user.image = auth[:info][:image]
  #     user.token = auth[:credentials][:token]
  #     user.secret = auth[:credentials][:secret]
  #   end
  # end
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth[:provider]
      user.uid = auth[:uid]
      user.name = auth[:info][:name]
      user.image = auth[:info][:image]
      user.token = auth[:credentials][:token]
      user.secret = auth[:credentials][:secret]
    end
  end
  def twitter_client
  @twitter_client ||= Twitter::REST::Client.new(
  	consumer_key:        'mVYyeyXFydBtisgTKHxoJThjw',
    consumer_secret:     'IyJXS9i1YAuyMyM4gdvFmANgblkI9StLRgVMTJ2rBNifrzPj10',
    access_token:        token,
    access_token_secret: secret
  
  #config.access_token = '4900130930-vueew83PEBUCxAeHKVQweNEdlsuNPhREtY0iayn'
  #config.access_token_secret = 'yltHgujLTP5uroivixElIsriX4oKiNBYjfQN4t1CRW5ER'
  )
end
end

