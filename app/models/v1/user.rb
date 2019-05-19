class V1::User < ApplicationRecord
  before_create do |user|
    user.api_key = user.generate_api_key
  end

  def generate_api_key
    loop do
      token = SecureRandom.base64.tr('+/=', 'Qrt')
      break token unless V1::User.exists?(api_key: token)
    end
  end

end
