class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.integer :authority_id
      t.integer :URN
      t.text :name
      t.text :type
      t.text :qualification
      t.integer :number_entered
      t.text :distinction
      t.text :merit
      t.text :pass
      t.text :unclassified
      t.text :no_result

      t.timestamps null: false
    end
  end
end
