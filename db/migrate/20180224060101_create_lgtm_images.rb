class CreateLgtmImages < ActiveRecord::Migration[5.1]
  def change
    create_table :lgtm_images do |t|
      t.string :url

      t.timestamps
    end
  end
end
