class Owner < ActiveRecord::Base
  # TODO: add validations
  validates :email, presence: true, uniqueness: true, length: {maximum: 255}, inclusion: { in: %w(@)}
  validates :first_name, presence: true, length: {maximum: 255}
  validates :last_name, presence: true, length: {maximum: 255}
  before_save :normalize_phone_number

  # removes leading 1 and the characters (, ), -, .
  def normalize_phone_number


    # stretch
  end

end
