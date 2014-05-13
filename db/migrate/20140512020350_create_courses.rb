class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :teacher
      t.text :desc
      t.text :teacher_desc
      t.integer :grade
      t.time :time
      t.string :room
      t.string :slug
    end

    add_index :courses, :name, unique: true
  end
end
