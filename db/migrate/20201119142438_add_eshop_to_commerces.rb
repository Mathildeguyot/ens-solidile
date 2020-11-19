class AddEshopToCommerces < ActiveRecord::Migration[6.0]
  def change
    add_column :commerces, :eshop, :boolean, default: :false
  end
end
