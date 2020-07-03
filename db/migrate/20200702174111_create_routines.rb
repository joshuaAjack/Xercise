class CreateRoutines < ActiveRecord::Migration[5.2]
  def change
    create_table :routines do |t|

      t.string :title 
      t.string :description 
      t.string :sets 
      t.string :reps 
      t.string :rest 
      t.string :execise 
      t.string :duration
    end
  end
end
