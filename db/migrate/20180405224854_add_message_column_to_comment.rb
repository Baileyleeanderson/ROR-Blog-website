class AddMessageColumnToComment < ActiveRecord::Migration
  def change
    add_column :comments, :message, :string
  end
end
