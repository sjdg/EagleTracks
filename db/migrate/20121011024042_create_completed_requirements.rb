class CreateCompletedRequirements < ActiveRecord::Migration
  def change
    create_table :completed_requirements do |t|
      t.integer :id
      t.integer :requirements
      t.integer :completes_date
      t.integer :user_id

      t.timestamps
    end
  end
end
