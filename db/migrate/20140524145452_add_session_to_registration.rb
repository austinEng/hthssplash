class AddSessionToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :session_1, :boolean, :default => :false
    add_column :registrations, :session_2, :boolean, :default => :false
    add_column :registrations, :session_3, :boolean, :default => :false
    add_column :registrations, :session_4, :boolean, :default => :false
  end
end
