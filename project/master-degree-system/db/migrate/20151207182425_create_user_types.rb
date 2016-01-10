class CreateUserTypes < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.string :name
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
