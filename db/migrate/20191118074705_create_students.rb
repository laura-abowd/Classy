class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :schoolID
      t.string :first_name
      t.string :last_name
      t.string :birthday
      t.string :gender
      t.boolean :esl
      t.boolean :gifted_talented
      t.boolean :special_education
      t.boolean :medical_alert
      t.string :next_teacher_lock
      t.text :notes
      t.references :grade, foreign_key: true

      t.timestamps
    end
  end
end
