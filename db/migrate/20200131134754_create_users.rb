class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :role
      t.string :full_name
      t.string :status
      t.string :email
      t.string :mobile_number

      t.timestamps
    end
  end
end
