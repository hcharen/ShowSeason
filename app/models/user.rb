class User < ApplicationRecord

  enum user_role: [:student, :instructor]
  has_many :events

  # belongs_to :instructor, :class_name => 'User'


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



end
