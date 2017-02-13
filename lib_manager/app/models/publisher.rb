class Publisher < ApplicationRecord
  has_many :books
  has_many :authors

  before_save :downcase_email

  validates :name, presence: true, length: {maximum: 50}
  validates :add, presence: true
  validates :phone, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}

  private
  def downcase_email
    self.email = email.downcase
  end
end
