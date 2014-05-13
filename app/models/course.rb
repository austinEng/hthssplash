class Course < ActiveRecord::Base
  attr_accessible :name, :teacher, :desc, :teacher_desc, :grade, :time, :room
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :registrations
  has_many :users, :through => :registrations
end