class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :categories, :name, :unique => true
    add_index :categories, :deleted_at
  end
end
