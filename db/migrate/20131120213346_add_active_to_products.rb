class AddActiveToProducts < ActiveRecord::Migration
  def up
    add_column :products, :active, :boolean, :default => true
  end

  def down
    remove_column :products, :active
  end
end
