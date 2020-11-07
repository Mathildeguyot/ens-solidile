class CreateCommerces < ActiveRecord::Migration[6.0]
  def change
    create_table :commerces do |t|
      t.string :name
      t.string :description
      t.string :tag
      t.string :tel
      t.string :mail
      t.string :address
      t.string :website
      t.string :payment
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
