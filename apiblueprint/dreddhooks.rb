require 'json'
include DreddHooks::Methods

before "Users Data > Get User Data List" do |transaction|
  transaction['skip'] = true
end

before "Users Data > Create User Data" do |transaction|
  transaction['skip'] = true
end

before "ID XXX user data > Get User Data" do |transaction|
  transaction['skip'] = true
end

before "ID XXX user data > Update User Data" do |transaction|
  transaction['skip'] = true
end

before "ID XXX user data > Delete User Data" do |transaction|
  transaction['skip'] = true
end

before "Users followed data > Get User followed list" do |transaction|
  transaction['skip'] = true
end

before "Users followed data > Create User followed" do |transaction|
  transaction['skip'] = true
end

before "ID XXX followed data > Get User followed" do |transaction|
  transaction['skip'] = true
end

before "ID XXX followed data > Update User followed" do |transaction|
  transaction['skip'] = true
end

before "ID XXX followed data > Delete User followed" do |transaction|
  transaction['skip'] = true
end

before "Users blog contents > Get User blog contents List" do |transaction|
  transaction['skip'] = true
end

before "Users blog contents > Create User blog contents" do |transaction|
  transaction['skip'] = true
end

before "ID XXX blog contents > Get User blog contents" do |transaction|
  transaction['skip'] = true
end

before "ID XXX blog contents > Update User blog contents" do |transaction|
  transaction['skip'] = true
end

before "ID XXX blog contents > Delete User blog contents" do |transaction|
  transaction['skip'] = true
end
