class FixesType < ActiveRecord::Migration
  def change
    add_column :institutions, :school_type, :text
  end
end
