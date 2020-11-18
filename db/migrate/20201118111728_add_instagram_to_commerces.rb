class AddInstagramToCommerces < ActiveRecord::Migration[6.0]
  def change
    add_column :commerces, :instagram, :string
  end
end
