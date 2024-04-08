class CreateWaitlists < ActiveRecord::Migration[7.0]
  def change
    create_table :waitlists do |t|
      t.string :name
      t.string :business_name
      t.string :email
      t.boolean :market
      t.boolean :customer_base
      t.boolean :enable_customers
      t.string :challenges

      t.timestamps
    end
  end
end
