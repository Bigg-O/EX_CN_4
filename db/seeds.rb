alec = User.create(:name=>"Alec", :password=>"noob")
bob = User.create(:name=>"Bob", :password=>"hello")

uno = Level.create(:name=>"Level One")
dos = Level.create(:name=>"Level Two")
tres = Level.create(:name=>"Level Three")

round_one = Game.create(:completion_time=>25, :user_id=>2, :level_id=>4)
round_two = Game.create(:completion_time=>35, :user_id=>2, :level_id=>4)
round_three = Game.create(:completion_time=>55, :user_id=>2, :level_id=>5)
round_four = Game.create(:completion_time=>30, :user_id=>2, :level_id=>6)
round_five = Game.create(:completion_time=>40, :user_id=>2, :level_id=>5)
round_six = Game.create(:completion_time=>20, :user_id=>2, :level_id=>6)
round_seven = Game.create(:completion_time=>nil, :user_id=>2, :level_id=>6)
round_eight = Game.create(:completion_time=>nil, :user_id=>2, :level_id=>4)
round_nine = Game.create(:completion_time=>20, :user_id=>3, :level_id=>4)
round_ten = Game.create(:completion_time=>30, :user_id=>3, :level_id=>5)
round_eleven = Game.create(:completion_time=>40, :user_id=>3, :level_id=>6)
round_twelve = Game.create(:completion_time=>50, :user_id=>3, :level_id=>4)
round_thirteen = Game.create(:completion_time=>35, :user_id=>3, :level_id=>4)
round_fourteen = Game.create(:completion_time=>nil, :user_id=>3, :level_id=>5)
round_fifteen = Game.create(:completion_time=>45, :user_id=>3, :level_id=>6)
round_sixteen = Game.create(:completion_time=>nil, :user_id=>3, :level_id=>4)
round_sixteen = Game.create(:completion_time=>15, :user_id=>2, :level_id=>5)