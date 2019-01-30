class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.belongs_to :course, index: true
      t.timestamps
    end
  end
end
