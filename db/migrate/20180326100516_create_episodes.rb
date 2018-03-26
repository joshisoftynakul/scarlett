class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.string :title
      t.float :rating
      t.references :podcast, foreign_key: true

      t.timestamps
    end
  end
end
