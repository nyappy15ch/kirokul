class CreateHobbies < ActiveRecord::Migration[6.0]
  def change
    create_table :hobbies do |t|
      t.string :hobby_name, null:false
      t.references :user   , foreign_key: true
      t.timestamps
    end
  end
end
