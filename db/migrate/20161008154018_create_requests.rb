class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :email
      t.string :type
      t.text :body
      t.integer :time
      t.string :price
      t.string :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
