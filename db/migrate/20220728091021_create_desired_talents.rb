class CreateDesiredTalents < ActiveRecord::Migration[7.0]
  def change
    create_table :desired_talents do |t|
      t.text :talent_options, array: true, default: []
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
