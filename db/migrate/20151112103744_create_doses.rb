class CreateDoses < ActiveRecord::Migration
  def change
    create_table :doses do |t|
      t.string :description
      t.coktails :references
      t.ingredients :references

      t.timestamps null: false
    end
  end
end
