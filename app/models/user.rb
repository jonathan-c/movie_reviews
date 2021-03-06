class User < ActiveRecord::Base
  attr_accessible :name, :provider, :uid, :image, :email
  
  def self.create_with_omniauth(auth)
    create! do |user|
          user.provider = auth["provider"]
          user.uid = auth["uid"]
          user.name = auth["info"]["name"]
          user.image = auth["info"]["image"]
          user.email = auth["info"]["email"]
    end
  end
end
