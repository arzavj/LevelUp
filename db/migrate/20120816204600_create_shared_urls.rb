class CreateSharedUrls < ActiveRecord::Migration
  def change
    create_table :shared_urls do |t|
      t.text :title
      t.text :url

      t.timestamps
    end
  end
end
