class ChangeTables < ActiveRecord::Migration[5.2]
  def change
    change_table :doctors do |t|
      t.remove :speciality
      t.belongs_to :city
    end

    change_table :patients do |t|
      t.belongs_to :city
    end

    change_table :appointments do |t|
      t.belongs_to :city
    end
  end
end
