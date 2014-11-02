class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :title
      t.string :description
      t.references :user, index: true
      t.string :address
      t.string :image
      t.string :category

      t.timestamps
    end
  end
end
