class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :email
      t.string :type_request
      t.text :body
      t.date :time_request
      t.string :price
      t.string :phone_user
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
