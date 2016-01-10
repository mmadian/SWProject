class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.references :user, index: true
      t.references :professorTitle, index: true
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
