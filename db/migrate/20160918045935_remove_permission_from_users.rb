class RemovePermissionFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :Permission, :integer
  end
end
