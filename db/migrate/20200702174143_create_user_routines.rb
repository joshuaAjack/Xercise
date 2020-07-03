class CreateUserRoutines < ActiveRecord::Migration[5.2]
  def change
    create_table :user_routines do |t|

      t.integer :users_id
      t.integer :routines_id
    end
  end
end
