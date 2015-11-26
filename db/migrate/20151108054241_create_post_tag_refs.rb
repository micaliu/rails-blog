class CreatePostTagRefs < ActiveRecord::Migration
  def change
    create_table :post_tag_refs do |t|
      t.references :Post, index: true, foreign_key: true
      t.references :Tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
