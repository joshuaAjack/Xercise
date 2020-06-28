class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :Users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
  end
 end
end
