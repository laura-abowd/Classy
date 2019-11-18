class CreateDoNotPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :do_not_places do |t|
      t.references :student_one, foreign_key: { to_table: :students }
      t.references :student_two, foreign_key: { to_table: :students }

      t.timestamps
    end
  end
end
