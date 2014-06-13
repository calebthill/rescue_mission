class AddTimestampsToQuestions < ActiveRecord::Migration
  def up
    add_column :questions, :created_at, :datetime
    add_column :questions, :updated_at, :datetime
  end
  def down
    remove_column :questions, :created_at
    remove_column :questions, :updated_at
  end
end
