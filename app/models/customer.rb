class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, :email, uniqueness: true
  validates :username, :password, :full_name, :email, :address, presence: true
  has_many :orders
  belongs_to :province
end
