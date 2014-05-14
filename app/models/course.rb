class Course < ActiveRecord::Base
  attr_accessible :name, :teacher, :desc, :teacher_desc, :grade, :time, :room
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :registrations
  has_many :users, :through => :registrations
  validates :name, presence: true, uniqueness: {case_senstive: false}
  validates :teacher, presence: true
end