class AddFacebookToCommerces < ActiveRecord::Migration[6.0]
  def change
    add_column :commerces, :facebook, :string
  end
end
