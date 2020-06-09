class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    enum kind: [:salesman, :manager]
    enum status: [:active, :inactive]
    has_many :comisions
    has_many :address
    has_many :clients
    has_many :product_quantities 
    has_many :sales
end
