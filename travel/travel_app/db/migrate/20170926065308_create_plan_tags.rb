class CreatePlanTags < ActiveRecord::Migration[5.0]
  def change
    create_table :plan_tags do |t|
      t.references :plan, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
