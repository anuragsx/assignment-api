class Notification < ApplicationRecord
    # added server side validations for phone number format
    validates :mobile_number, presence: true

    validates :mobile_number, format: { with: /((\+44(\s\(0\)\s|\s0\s|\s)?)|0)7\d{3}(\s)?\d{6}/, 
        message: "Please enter a valid UK mobile number." }

    validates :mobile_number, uniqueness: true    

end
