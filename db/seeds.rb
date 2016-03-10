# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'json'
Instructor.delete_all
Subject.delete_all
Course.delete_all
JSON.parse(open("instructor.json").read).each do |entry|
  id = entry["id"]
  first = entry["first"]
  middle = entry["middle"]
  last = entry["last"]
  email = entry["email"]
  Instructor.create(formal_id: id, first: first, middle: middle, last: last, email: email)
end

JSON.parse(open("subject.json").read).each do |entry|
  id = entry["id"]
  name = entry["name"]
  abbr = entry["abbreviation"]
  Subject.create(sub_id: id, name: name, abbr: abbr)
end

JSON.parse(open("course.json").read).each do |entry|
  name = entry["name"]
  code = entry["code"]
  description = entry["description"]
  Course.create(name: name, code: code, description: description)
end
