class Owner < ActiveRecord::Base
  # TODO: add validations

  before_save :normalize_phone_number

  validates :first_name,
  			presence: true,
  			length: {maximum: 255}


  validates :last_name,
  			presence: true,
  			length: {maximum: 255}

  validates :email,
  			presence: true,
  			uniqueness: true,
  			length: {maximum: 255}
  # removes leading 1 and the characters (, ), -, .
  def normalize_phone_number
    # stretch
  end

end
