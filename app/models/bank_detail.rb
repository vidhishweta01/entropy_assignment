class BankDetail < ApplicationRecord
  belongs_to :user
  validates_presence_of :account_number, :ifsc_code, :swift_code, allow_blank: false
  validates :ifsc_code, format: { with: /[A-Z]{4}0\d{6}/, message: "must be valid Ifsc code" }, length: { is: 11, message: "length must be equal to 11"}
  validates :swift_code, format: { with: /[A-Z]{4}[A-Z]{2}([A-Z]|\d){2}\d{3}/, message: "must be valid Swift code"}, length: {is: 11, message: "length must be equal to 11" }
end
