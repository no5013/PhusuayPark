class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :checkin_date
      t.string :checkout_date
      t.integer :supreme_num
      t.integer :supreme_double_num
      t.integer :delux_num
      t.integer :delux_double_num
      t.integer :suite_num
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.text :contact_message

      t.timestamps null: false
    end
  end
end
