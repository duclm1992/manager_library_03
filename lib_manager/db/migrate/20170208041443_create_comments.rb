class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
      t.integer :rating_comment
      t.string :content

      t.timestamps
    end
  end
end
