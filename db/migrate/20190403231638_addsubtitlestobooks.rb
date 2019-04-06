class Addsubtitlestobooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :sub_titles, :string
  end
end
