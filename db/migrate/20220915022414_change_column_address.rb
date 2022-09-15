class ChangeColumnAddress < ActiveRecord::Migration[7.0]
  def change
    rename_column :restaurants, :addres, :address
  end
end
