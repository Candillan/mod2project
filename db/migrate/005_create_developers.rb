class CreateDevelopers < ActiveRecord::Migration[6.0]
  def change
    create_table :developers do |t|
      t.string   :name
      t.integer  :age
      t.integer  :experience
      t.string   :studio
      t.timestamps
    end
  end
end
