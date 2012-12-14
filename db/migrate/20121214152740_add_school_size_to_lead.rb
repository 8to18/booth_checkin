class AddSchoolSizeToLead < ActiveRecord::Migration
  def change
    add_column :leads, :school_size, :integer
  end
end
