class CreateIndicatedTalents < ActiveRecord::Migration[7.0]
  def change
    create_table :indicated_talents do |t|
      t.text :full_name
      t.text :talent_options, array: true, default: []
      t.string :matric_no,          null: false, default: ""
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

