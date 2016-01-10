class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.string :url
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
