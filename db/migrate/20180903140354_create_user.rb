class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :role
      t.string :email
 
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.text   :bio

      t.string :pic_url
      t.timestamps
    end
  end
end
