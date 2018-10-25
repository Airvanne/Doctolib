class ChangeCityAndDoctors < ActiveRecord::Migration[5.2]
  def change
    change_table :cities do |t|
      t.string :name
    end

    change_table :doctors do |t|
      t.remove :name
    end
  end
end
