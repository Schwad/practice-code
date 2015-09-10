class AlterColumnsForCriteria < ActiveRecord::Migration
  def change
    add_column :institutions, :distinction_3, :integer
    add_column :institutions, :merit_1, :integer
    add_column :institutions, :merit_2, :integer
    add_column :institutions, :merit_3, :integer
    add_column :institutions, :pass_1, :integer
    add_column :institutions, :pass_2, :integer
    add_column :institutions, :pass_3, :integer
  end
end
