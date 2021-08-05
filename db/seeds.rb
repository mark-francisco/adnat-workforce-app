Shift.delete_all
User.delete_all
Organization.delete_all

organizations = Organization.create!([
  { :name => "workforce.com", :hourly_rate => 29 },
  { :name => "pringles", :hourly_rate => 65 },
  { :name => "adidaz", :hourly_rate => 18 },
  { :name => "nike", :hourly_rate => 15 },
])

users = User.create!([
  { :organization_id => organizations.first.id, :name => "rafael nadal", :email_address => "rafa@example.com", :password => "password" },
  { :name => "alison wonderland", :email_address => "alison@example.com", :password => "password" },
  { :name => "vinny testaverde", :email_address => "test@example.com", :password => "password" },
  { :name => "mark", :email_address => "m@example.com", :password => "password" },
])

shift1 = Shift.create!(:user_id => users.first.id, :start => DateTime.parse("2021-08-01 10:00"), :finish => DateTime.parse("2021-08-01 18:00"), :break_length => 30)
shift2 = Shift.create!(:user_id => users.first.id, :start => DateTime.parse("2021-08-02 07:00"), :finish => DateTime.parse("2021-08-02 16:00"), :break_length => 60)
