class FixOauthExpiresAt < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :ouath_expires_at, :oauth_expires_at
  end
end
