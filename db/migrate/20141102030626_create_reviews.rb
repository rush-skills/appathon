class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true
      t.references :place, index: true
      t.string :description
      t.string :stars
      t.string :image

      t.timestamps
    end
  end
end
