class AddMoreColumnsToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :description, :string
    add_column :beers, :glassware, :string
    add_column :beers, :available, :string
    add_column :beers, :available_description, :string
  end
end
