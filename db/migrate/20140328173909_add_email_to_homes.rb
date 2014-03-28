class AddEmailToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :email, :string
  end
end
