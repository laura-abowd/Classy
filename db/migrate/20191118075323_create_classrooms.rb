class CreateClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :classrooms do |t|
      t.references :teacher, foreign_key: true
      t.references :grade, foreign_key: true
      t.integer :year
      t.boolean :readystatus

      t.timestamps
    end
  end
end
