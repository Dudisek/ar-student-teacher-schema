require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
  	create_table :students do |t|
  		t.string :first_name
  		t.string :last_name
  		t.string :gender
  		t.date :birthday
  		t.string :email
  		t.string :phone
  		t.timestamps null: false #SET UP DATE
  	end

    create_table :subjects do |t|
      t.integer  :student_id
      t.integer :teacher_id
      # t.belongs_to :teacher
      # t.belongs_to :student
    end  

    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.timestamps null: false #SET UP DATE
    end
    # HINT: checkout ActiveRecord::Migration.create_table
  end
end