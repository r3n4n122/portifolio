class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :cpf 
      t.string :cns
      t.string :email
      t.integer :phone
      t.date :date_of_birth 
    
      t.timestamps
    end
  end
end
