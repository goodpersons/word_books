class AddStatusToWords < ActiveRecord::Migration[7.0]
  def change
    add_column :words, :status, :boolean
  end
end
