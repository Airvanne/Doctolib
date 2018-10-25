class ChangeDoctor < ActiveRecord::Migration[5.2]
  def change
    change_table :doctors do |t|
      t.belongs_to :speciality
    end

    change_table :specialities do |t|
      t.string :name
      t.belongs_to :doctor
    end
  end
end
