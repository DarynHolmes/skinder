class AddUserDetailsToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :email, :string
    add_column :messages, :username, :string
  end
end
