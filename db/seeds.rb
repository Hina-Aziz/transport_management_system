# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Role.create([{name:'admin'},{name:"user"}])
Company.create([{name:'transport company1'},{name:'transport company2'}])
User.create([{name:'jane',role_id:1,company_id:1},{name:'john',role_id:2,company_id:1},{name:'chris',role_id:2,company_id:2},{name:'Edgar',role_id:1,company_id:2}])
Vehicle.create([{name:'A1',company_id:1},{name:'A2',company_id:1},{name:'B1',company_id:2},{name:'B2',company_id:2}])
Trip.create([{vehicle_id:1,user_id:2,start_time:"2018-01-31 13:59:00",end_time:"2018-01-31 23:59:00",trip_status:2},{vehicle_id:1,user_id:2,start_time:"2018-01-01 13:59:00",trip_status:1}])