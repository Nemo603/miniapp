class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.timestamps
      # t.string :name, null: false
      # t.index :name, unique: true
      t.references :user, null: false, foreign_key: true
    end
  end
end
