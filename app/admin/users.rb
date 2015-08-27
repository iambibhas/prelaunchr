# Export to CSV with the referrer_id
ActiveAdmin.register User do
  index do
    column :id
    column :email
    column :referral_code
    column :referrer_id
    column :created_at
    column :updated_at
    column(:referrals_count) { |user| user.referrals.count }
  end

  csv do
    column :id
    column :email
    column :referral_code
    column :referrer_id
    column :created_at
    column :updated_at
    column(:referrals_count) { |user| user.referrals.count }
  end

  actions :index, :show

end
