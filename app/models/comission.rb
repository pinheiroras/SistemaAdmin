class Comission < ApplicationRecord
  enum status: [:pending, :paid]
  belongs_to :sale
  belongs_to :user
end
