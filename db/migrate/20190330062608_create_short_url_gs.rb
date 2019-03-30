class CreateShortUrlGs < ActiveRecord::Migration[5.2]
  def change
    create_table :short_url_gs do |t|
      t.text :url
      t.text :short_url

      t.timestamps
    end
  end
end
