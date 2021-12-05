# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Example Users

Student1 = User.create(name: 'Student1', email: 'student1@3901.com', password: 'password', admin_level: 'Student')
Student2 = User.create(name: 'Student2', email: 'student2@3901.com', password: 'password', admin_level: 'Student')
Student3 = User.create(name: 'Student3', email: 'student3@3901.com', password: 'password', admin_level: 'Student')
Student4 = User.create(name: 'Student4', email: 'student4@3901.com', password: 'password', admin_level: 'Student')
Student5 = User.create(name: 'Student5', email: 'student5@3901.com', password: 'password', admin_level: 'Student')
Student6 = User.create(name: 'Student6', email: 'student6@3901.com', password: 'password', admin_level: 'Student')

User.create(name: 'Teacher', email: 'teacher@3901.com', password: 'password', admin_level: 'Teacher')
User.create(name: 'TA', email: 'ta@3901.com', password: 'password', admin_level: 'TA')
User.create(name: 'System', email: 'system@3901.com', password: 'password', admin_level: 'System')

# Example Teams
team1 = Team.new(:id => 1, name:"Fantastic Four");
team1.users << Student1
team1.users << Student3
team1.users << Student5
team1.save

team2 = Team.new(:id => 2, name:"Team Yoshi");
team2.users << Student2
team2.users << Student4
team2.users << Student6
team2.save

# Create Project
Project.create(:id => 1, name: "game_of_set");
# game_of_set << team1
# game_of_set.save

# hangman = Project.new(name: "hangman");
# hangman << team2
# hangman.save

# Create Review
Review.create(comment: "good job you", score: 10, project_id: 1, reviewer_id: 3, reviewee_id: 2);