class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :schoolID
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :gender
      t.string :photo
      t.boolean :esl, default: false
      t.boolean :gifted_talented, default: false
      t.boolean :special_education, default: false
      t.boolean :medical_alert, default: false
      t.text :notes, default: ''
      t.references :grade, foreign_key: true


      t.timestamps
    end
  end
end
