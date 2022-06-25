class Profile < ApplicationRecord
  belongs_to :user
  validates_presence_of :first_name, :last_name, :country_code, :phone_number, allow_blank: false
  validates :country, format: {with: /\W\d+/ }
  validates :phone_number, format: {with:/\d+/ }
end
