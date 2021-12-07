# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Example Users
student = User.create(name: 'Student', email: 'student@3901.com', password: 'password', admin_level: 'Student')
student1 = User.create(name: 'Student1', email: 'student1@3901.com', password: 'password', admin_level: 'Student')
student2 = User.create(name: 'Student2', email: 'student2@3901.com', password: 'password', admin_level: 'Student')
student3 = User.create(name: 'Student3', email: 'student3@3901.com', password: 'password', admin_level: 'Student')
student4 = User.create(name: 'Student4', email: 'student4@3901.com', password: 'password', admin_level: 'Student')
student5 = User.create(name: 'Student5', email: 'student5@3901.com', password: 'password', admin_level: 'Student')
student6 = User.create(name: 'Student6', email: 'student6@3901.com', password: 'password', admin_level: 'Student')

User.create(name: 'Teacher', email: 'teacher@3901.com', password: 'password', admin_level: 'Teacher')
User.create(name: 'TA', email: 'ta@3901.com', password: 'password', admin_level: 'TA')
User.create(name: 'System', email: 'system@3901.com', password: 'password', admin_level: 'System')

#Example Teams
team = Team.new(name: "Team1");
team.users << student
team.save

Project.create(:id => 200, name: "game_of_set");
Project.create(:id => 300, name: "game_of_set_reloaded");

team1 = Team.new(:id => 1, name:"Fantastic Four", project_id: '200');
team1.users << student1
team1.users << student3
team1.save

team2 = Team.new(:id => 2, name:"Team Yoshi", project_id: '300');
team2.users << student2
team2.users << student4
team2.users << student6
team2.save


