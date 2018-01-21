class AddCompanySectorToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :company_sector, :string
  end
end
