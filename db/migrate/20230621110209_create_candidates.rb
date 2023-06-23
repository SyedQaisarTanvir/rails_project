class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.integer :candidate_id
      t.string :candidate_name
      t.string :candidate_email
      t.string :candidate_phone
      t.string :candidate_cv

      t.timestamps
    end
  end
end
