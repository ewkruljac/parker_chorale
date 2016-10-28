class CreatePerformances < ActiveRecord::Migration[5.0]
  def change
    create_table :performances do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.string :purchase_link

      t.timestamps
    end
  end
end
