class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes, dependent: :destroy

  ROLE_REGULAR = 0
  ROLE_ADMIN = 1

  def admin?
    role == ROLE_ADMIN
  end

  def regular?
    role == ROLE_REGULAR
  end
end
