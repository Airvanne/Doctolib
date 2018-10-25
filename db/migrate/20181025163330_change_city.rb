class ChangeCity < ActiveRecord::Migration[5.2]
  def change
    change_table :doctors do |t|
      t.string :name
    end
  end
end
