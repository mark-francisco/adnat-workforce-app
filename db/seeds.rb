Organization.delete_all
User.delete_all
Shift.delete_all

organizations = Organization.create!([
  { :name => "workforce.com", :hourly_rate => 40 }, { :name => "pringles", :hourly_rate => 25 },
])

users = User.create!([
  { :organization_id => organizations.first.id, :name => "rafael nadal", :email_address => "rafa@example.com", :password => "password" },
  { :name => "alison wonderland", :email_address => "alison@example.com", :password => "password" },
  { :name => "vinny testaverde", :email_address => "test@example.com", :password => "password" },
])

shift1 = Shift.create!(:user_id => users.first.id, :start => DateTime.parse("2021-08-01 10:00"), :finish => DateTime.parse("2021-08-01 18:00"), :break_length => 60)
shift2 = Shift.create!(:user_id => users.second.id, :start => DateTime.parse("2021-08-02 07:00"), :finish => DateTime.parse("2021-08-02 16:00"), :break_length => 60)
