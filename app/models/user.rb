class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :omniauthable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true, length: { minimum: 4, maximum: 25 }


  def self.handle_omniauth(auth)
    user = User.where(email: auth.info.email).first

    if user.present?
      unless user.provider.present?
        user.uid = auth.uid
        user.provider = auth.provider
        user.save
      end
    else
      user = User.create(
                          uid: auth.uid, 
                          provider: auth.provider, 
                          email: auth.info.email, 
                          password: Devise.friendly_token[0,20], 
                          username: "#{auth.info.name.split(" ").join("").downcase}_#{rand(1111..9999)}",
                          confirmed_at: Time.now
                        )
    end

    user
  end
end
