class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.integer :id
      t.integer :category_id
      t.string :title
      t.string :description
      t.date :date
      t.text :instructions

      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end
