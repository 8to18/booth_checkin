class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.boolean :scheduling
      t.boolean :registration
      t.boolean :spirit
      t.boolean :fundraising
      t.boolean :camps
      t.boolean :boosters
      t.string :current
      t.integer :person_id

      t.timestamps
    end
  end
end
