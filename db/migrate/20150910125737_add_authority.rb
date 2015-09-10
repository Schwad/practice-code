class AddAuthority < ActiveRecord::Migration
  def change
    add_column :institutions, :authority, :text
  end
end
