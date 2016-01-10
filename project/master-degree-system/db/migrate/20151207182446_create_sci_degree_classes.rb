class CreateSciDegreeClasses < ActiveRecord::Migration
  def change
    create_table :sci_degree_classes do |t|
      t.string :name
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
