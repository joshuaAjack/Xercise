class Routine < ActiveRecord::Migration[5.2]
  def change
    create_table :routine do |t|
      t.string :title
      t.integer :sets
      t.integer :reps 
      t.string  :rest 
      t.string :exercise 
      t.string :duration 
      t.string :workout
  end
 end
end
