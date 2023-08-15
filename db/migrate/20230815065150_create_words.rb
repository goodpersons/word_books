class CreateWords < ActiveRecord::Migration[7.0]
  def change
    create_table :words do |t|
      t.string :name
      t.string :say
      t.string :explain
      t.string :example

      t.timestamps
    end
  end
end
