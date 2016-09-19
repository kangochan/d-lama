class RemoveAccountNameFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :account_name, :string
  end
end
