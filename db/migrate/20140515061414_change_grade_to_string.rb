class ChangeGradeToString < ActiveRecord::Migration
  def up
    change_column :courses, :grade, :string
  end

  def down
    change_column :courses, :grade, :integer
  end
end
