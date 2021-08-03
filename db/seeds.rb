# organizations = Organization.create([:name => "workforce.com", :hourly_rate => 40],[:name => "pringles", :hourly_rate => 25])

# users = User.create([
#   { :organization_id => organizations.first.id, :name => "rafael nadal" :email_address => "rafa@example.com", :password_digest => "password" },
#   { :name => "alison wonderland", :email_address => "alison@example.com", :password_digest => "password" },
# ])

# shift1 = Shift.create(:user_id => users.first.id, :start => Time.zone.parse('2021-08-01 10:00'), :finish => Time.zone.parse('2021-08-01 6:00'), :break_length => 60)
