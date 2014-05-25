class Registration < ActiveRecord::Base
  attr_accessible :user_id, :course_id, :session_1, :session_2, :session_3, :session_4
  belongs_to :user
  belongs_to :course
end