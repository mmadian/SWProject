class RemoveDateFromProfessorTitles < ActiveRecord::Migration
  def change
  	remove_column :professor_titles, :date
  end
end
