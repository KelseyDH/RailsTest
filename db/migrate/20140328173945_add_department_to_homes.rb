class AddDepartmentToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :department, :string
  end
end
