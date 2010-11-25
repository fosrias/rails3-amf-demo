# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

action = Action.new(:label => 'write', :position => 0)
action[:code] = 'WRITE'
action.save
action = Action.new(:label => 'read', :position => 1)
action[:code] = 'READ'
action.save
action = Action.new( :label => 'send', :position => 2)
action[:code] = 'SEND'
action.save