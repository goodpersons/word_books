class CreateUseWords < ActiveRecord::Migration[7.0]
  def change
    create_table :use_words do |t|
      t.references :book, null: false, foreign_key: true
      t.references :word, null: false, foreign_key: true

      t.timestamps
    end
  end
end
