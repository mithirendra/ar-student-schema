require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class BelongsToStudents < ActiveRecord::Migration
  
	def change
    create_table :students do |t|
      t.belongs_to :teacher
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.string :phone
      t.date :birthday
      t.timestamps null: false
    end

    add_index :students, :teacher_id
  end

end