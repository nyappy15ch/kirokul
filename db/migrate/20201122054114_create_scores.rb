class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :your_score, null: false
      t.integer :rival_score
      t.references :user, foreign_key: true
      t.references :hobby, foreign_key: true
      t.timestamps
    end
  end
end
