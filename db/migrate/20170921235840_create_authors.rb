class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.references :book, foreign_key: true

      t.timestamps
    end
        add_index :authors, [:book_id, :name]

  end
end
