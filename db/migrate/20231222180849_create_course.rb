class CreateCourse < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :certificate
      t.date   :formation_date 
      t.timestamps
    end
  end
end
