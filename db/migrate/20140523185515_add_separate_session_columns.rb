class AddSeparateSessionColumns < ActiveRecord::Migration
  def change
    add_column :courses, :session_1, :boolean, :default => :false
    add_column :courses, :session_2, :boolean, :default => :false
    add_column :courses, :session_3, :boolean, :default => :false
    add_column :courses, :session_4, :boolean, :default => :false
  end
end
