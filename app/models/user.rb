class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :enrollments
  has_secure_password
end
