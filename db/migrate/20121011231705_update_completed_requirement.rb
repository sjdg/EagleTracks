class UpdateCompletedRequirement < ActiveRecord::Migration
  def up
    change_table :completed_requirements do |t|
      t.rename :requirements, :requirement_id
    end
  end

  def down
    change_table :completed_requirements do |t|
      t.rename :requirement_id, :requirements
    end
  end
end
