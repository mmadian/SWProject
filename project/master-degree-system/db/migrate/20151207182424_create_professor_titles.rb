class CreateProfessorTitles < ActiveRecord::Migration
  def change
    create_table :professor_titles do |t|
      t.string :name
      t.date :date
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
