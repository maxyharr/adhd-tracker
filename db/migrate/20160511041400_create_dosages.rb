class CreateDosages < ActiveRecord::Migration
  def change
    create_table :dosages do |t|
      t.float :value
      t.string :unit
      t.references :medication

      t.timestamps null: false
    end
  end
end
