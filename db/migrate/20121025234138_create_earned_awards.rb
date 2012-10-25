class CreateEarnedAwards < ActiveRecord::Migration
  def change
    create_table :earned_awards do |t|
      t.integer :award_id
      t.date :date_earned
      t.integer :user_id

      t.timestamps
    end
  end
end
