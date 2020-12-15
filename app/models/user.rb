class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :user, presence: true
  validates :profile, presence: true
  validates :belonging, presence: true
  validates :position, presence: true
  has_many :prototype
end
