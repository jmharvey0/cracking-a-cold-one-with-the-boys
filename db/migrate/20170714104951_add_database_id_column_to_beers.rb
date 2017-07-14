class AddDatabaseIdColumnToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :database_id, :string
  end
end
