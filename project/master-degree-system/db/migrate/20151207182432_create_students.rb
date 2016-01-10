class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.references :user, index: true
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
