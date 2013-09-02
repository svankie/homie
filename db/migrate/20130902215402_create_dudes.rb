class CreateDudes < ActiveRecord::Migration
  def change
    create_table :dudes do |t|
      t.string :name
      t.text :bio
      t.string :picture
      t.string :activity
      t.text :neighborhood_preference
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
