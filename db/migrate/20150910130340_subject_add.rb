class SubjectAdd < ActiveRecord::Migration
  def change
    add_column :institutions, :subject, :text
  end
end
