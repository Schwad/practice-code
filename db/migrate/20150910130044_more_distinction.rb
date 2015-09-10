class MoreDistinction < ActiveRecord::Migration
  def change
    add_column :institutions, :distinction_2, :integer
    add_column :institutions, :distinction_1, :integer
  end
end
