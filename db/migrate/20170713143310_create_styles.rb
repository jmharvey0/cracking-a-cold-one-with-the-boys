class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :name
      t.string :description
      t.integer :category_id

      t.timestamps
    end
  end
end
