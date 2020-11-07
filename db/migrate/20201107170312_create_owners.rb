class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :pseudo
      t.string :description

      t.timestamps
    end
  end
end
