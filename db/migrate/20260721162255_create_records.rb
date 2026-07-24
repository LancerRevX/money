class CreateRecords < ActiveRecord::Migration[8.1]
  def change
    create_table :tags do |t|
      t.timestamps

      t.string :name
      t.belongs_to :parent
    end


    create_table :records do |t|
      t.timestamps

      t.string :name
      t.decimal :value, precision: 11, scale: 2
    end

  end
end
