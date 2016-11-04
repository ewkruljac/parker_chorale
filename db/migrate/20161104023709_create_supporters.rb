class CreateSupporters < ActiveRecord::Migration[5.0]
  def change
    create_table :supporters do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :website_url
      t.string :type

      t.timestamps
    end
  end
end
