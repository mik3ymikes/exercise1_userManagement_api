class UpdateUserAddAge < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :age, :integer, default:0
  end
end
