class User < ApplicationRecord
  validates :name, presence: true ,length: {maximum: 30}
  validates :email, presence: true ,length: {minimum: 255},
                    format: { with: /\A[\W+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
                    
end
