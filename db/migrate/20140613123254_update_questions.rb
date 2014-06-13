class UpdateQuestions < ActiveRecord::Migration
  def up
    add_column :questions, :title, :string, null: false
    add_column :questions, :description, :text, null: false
  end

  def down
    remove_column :questions, :title
    remove_column :questions, :description
  end
end
