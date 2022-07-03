class CreateWishItems < ActiveRecord::Migration[7.0]
  def change
    create_table :wish_items do |t|
      t.references :wish_list, null: false, foreign_key: true
      t.text :description
      t.text :link
      t.boolean :completed
      t.datetime :completed_at
      t.references :wishlist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
