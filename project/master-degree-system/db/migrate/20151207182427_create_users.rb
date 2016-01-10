class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :userType, index: true
      t.string :nationalID
      t.string :name
      t.string :imageURL
      t.string :mobileNumber
      t.string :phoneNumber
      t.string :email
      t.string :password
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
