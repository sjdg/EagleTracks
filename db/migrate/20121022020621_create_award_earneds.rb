class CreateAwardEarneds < ActiveRecord::Migration
  def change
    create_table :award_earneds do |t|
      t.integer :award_id
      t.date :date_earned
      t.integer :user_id

      t.timestamps
    end
  end
end
