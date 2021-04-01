class FixTypeColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :types, :type, :type_name
  end
end
