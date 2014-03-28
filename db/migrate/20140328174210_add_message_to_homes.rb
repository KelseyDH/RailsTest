class AddMessageToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :message, :text
  end
end
