class CreateAuthorities < ActiveRecord::Migration
  def change
    create_table :authorities do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
