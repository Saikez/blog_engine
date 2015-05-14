require 'faker'

require_relative '../models/blog'
require_relative '../models/author'
require_relative '../models/category'

blog = Blog.find_or_create_by!(name: "#{Faker::Name.name} Blog")

blog.authors.find_or_create_by!(name: Faker::Name.name, twitter_handle: "@#{Faker::Hacker.adjective}")
blog.authors.find_or_create_by!(name: Faker::Name.name, twitter_handle: "@#{Faker::Hacker.adjective}")
blog.authors.find_or_create_by!(name: Faker::Name.name, twitter_handle: "@#{Faker::Hacker.adjective}")

blog.categories.find_or_create_by!(name: Faker::Commerce.department)
blog.categories.find_or_create_by!(name: Faker::Commerce.department)
blog.categories.find_or_create_by!(name: Faker::Commerce.department)
blog.categories.find_or_create_by!(name: Faker::Commerce.department)
blog.categories.find_or_create_by!(name: Faker::Commerce.department)
blog.categories.find_or_create_by!(name: Faker::Commerce.department)
blog.categories.find_or_create_by!(name: Faker::Commerce.department)
blog.categories.find_or_create_by!(name: Faker::Commerce.department)
blog.categories.find_or_create_by!(name: Faker::Commerce.department)
blog.categories.find_or_create_by!(name: Faker::Commerce.department)