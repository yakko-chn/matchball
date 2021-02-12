class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # ユーザー名の制約
    with_options presence: true do
      validates :name, length: { maximum: 18 }, uniqueness: true
    end
  
  # メールアドレスの制約
    VALID_EMAIL = /\A\S+@\S+\.\S+\z/.freeze
    validates :email, uniqueness: true, format: { with: VALID_EMAIL }
  
  # パスワード設定の制約
    VALID_PASSWORD = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
    validates  :password, confirmation: true, format: { with: VALID_PASSWORD }
    validates  :password_confirmation, presence: true


  has_many :matches
end
