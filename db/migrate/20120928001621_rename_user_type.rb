class RenameUserType < ActiveRecord::Migration
  def up
     rename_column :user_types, :type, :user_type
  end

  def down
  end
end
