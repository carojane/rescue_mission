class User < ActiveRecord::Base
  def self.create_with_omniauth(auth_hash)
    create! do |user|
      binding.pry
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end
end
