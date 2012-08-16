class CreateRatedDifficulties < ActiveRecord::Migration
  def change
    create_table :rated_difficulties do |t|
      t.integer :difficulty
      t.references :shared_url
      t.timestamps
    end
  end
end
