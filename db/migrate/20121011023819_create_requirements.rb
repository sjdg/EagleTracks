class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.integer :id
      t.string :designator
      t.string :text
      t.integer :subrequirements
      t.integer :subrequirements_required

      t.timestamps
    end
  end
end
