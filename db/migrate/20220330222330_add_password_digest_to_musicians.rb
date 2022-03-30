class AddPasswordDigestToMusicians < ActiveRecord::Migration[5.2]
  def change
    add_column :musicians, :password_digest, :string
  end
end
