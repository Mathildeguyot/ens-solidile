class AddSupportToCommerces < ActiveRecord::Migration[6.0]
  def change
    add_column :commerces, :support, :text
  end
end
