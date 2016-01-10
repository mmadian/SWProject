class CreateProgramClassStatuses < ActiveRecord::Migration
  def change
    create_table :program_class_statuses do |t|
      t.references :programClass, index: true
      t.references :preProgramClass, index: true
      t.string :status
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
