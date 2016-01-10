class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :name
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
