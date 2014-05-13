class User < ActiveRecord::Base
  rolify
  attr_accessible :name, :email, :password, :password_confirmation
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :registrations
  has_many :courses, :through => :registrations
end
