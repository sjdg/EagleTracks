class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.date :begin_date
      t.date :end_date
      t.string :name

      t.timestamps
    end
  end
end
