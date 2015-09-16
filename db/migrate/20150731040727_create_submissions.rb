class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :artistname
      t.string :trackname
      t.integer :bpm
      t.string :key
      t.string :link
      t.text :comments

      t.timestamps null: false
    end
  end
end
