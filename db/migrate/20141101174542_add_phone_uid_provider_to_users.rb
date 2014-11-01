class AddPhoneUidProviderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone, :string
    add_column :users, :uid, :string
    add_column :users, :provider, :string
  end
end
