class CreateOrganizers < ActiveRecord::Migration[5.2]
  def change
    create_table :organizers do |t|
      t.integer :organizer_id
      t.string :organizer_name
      t.string :organizer_email
      t.string :organizer_phone

      t.timestamps
    end
  end
end
