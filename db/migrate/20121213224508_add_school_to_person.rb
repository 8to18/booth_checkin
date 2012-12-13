class AddSchoolToPerson < ActiveRecord::Migration
  def up  	
    add_column :people, :school, :string
  end
end
