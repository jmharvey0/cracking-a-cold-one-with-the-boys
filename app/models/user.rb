class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validate :custom_pass_length_check

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @raw_password = new_password
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password == password
  end

  def custom_pass_length_check
    errors.add(:password, "must be at least 8 characters long") unless @raw_password.to_s.length >= 8
  end
end
