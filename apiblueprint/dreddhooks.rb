require 'json'
include DreddHooks::Methods

response_stash = {}

before "Users Data > Get User Data List" do |transaction|
  # if you want to add before action, write here.
end

before "Users Data > Create User Data" do |transaction|
  # if you want to add before action, write here.
end

after "Users Data > Create User Data" do |transaction|
  # saving HTTP response to the stash
  response_stash[transaction['name']] = transaction['real']
end

before "ID XXX user data > Get User Data" do |transaction|
  #reusing data from previous response here
  parsed_body = JSON.parse response_stash['Users Data > Create User Data']['body']
  machine_id = parsed_body['id']
  #replacing id in URL with stashed id from previous response
  transaction['fullPath'].gsub! '1', machine_id.to_s
end

before "ID XXX user data > Update User Data" do |transaction|
  #reusing data from previous response here
  parsed_body = JSON.parse response_stash['Users Data > Create User Data']['body']
  machine_id = parsed_body['id']
  #replacing id in URL with stashed id from previous response
  transaction['fullPath'].gsub! '1', machine_id.to_s
end

before "ID XXX user data > Delete User Data" do |transaction|
  #reusing data from previous response here
  parsed_body = JSON.parse response_stash['Users Data > Create User Data']['body']
  machine_id = parsed_body['id']
  #replacing id in URL with stashed id from previous response
  transaction['fullPath'].gsub! '1', machine_id.to_s
end

before "Users followed data > Get User followed list" do |transaction|
  # if you want to add before action, write here.
end

before "Users followed data > Create User followed" do |transaction|
  # if you want to add before action, write here.
end

after "Users followed data > Create User followed" do |transaction|
  # saving HTTP response to the stash
  response_stash[transaction['name']] = transaction['real']
end

before "ID XXX followed data > Get User followed" do |transaction|
  #reusing data from previous response here
  parsed_body = JSON.parse response_stash['Users followed data > Create User followed']['body']
  machine_id = parsed_body['id']
  #replacing id in URL with stashed id from previous response
  transaction['fullPath'].gsub! '1', machine_id.to_s
end

before "ID XXX followed data > Update User followed" do |transaction|
  #reusing data from previous response here
  parsed_body = JSON.parse response_stash['Users followed data > Create User followed']['body']
  machine_id = parsed_body['id']
  #replacing id in URL with stashed id from previous response
  transaction['fullPath'].gsub! '1', machine_id.to_s
end

before "ID XXX followed data > Delete User followed" do |transaction|
  #reusing data from previous response here
  parsed_body = JSON.parse response_stash['Users followed data > Create User followed']['body']
  machine_id = parsed_body['id']
  #replacing id in URL with stashed id from previous response
  transaction['fullPath'].gsub! '1', machine_id.to_s
end

before "Users blog contents > Get User blog contents List" do |transaction|
  # if you want to add before action, write here.
end

before "Users blog contents > Create User blog contents" do |transaction|
  # if you want to add before action, write here.
end

after "Users blog contents > Create User blog contents" do |transaction|
  # saving HTTP response to the stash
  response_stash[transaction['name']] = transaction['real']
end

before "ID XXX blog contents > Get User blog contents" do |transaction|
  #reusing data from previous response here
  parsed_body = JSON.parse response_stash['Users blog contents > Create User blog contents']['body']
  machine_id = parsed_body['id']
  #replacing id in URL with stashed id from previous response
  transaction['fullPath'].gsub! '1', machine_id.to_s
end

before "ID XXX blog contents > Update User blog contents" do |transaction|
  #reusing data from previous response here
  parsed_body = JSON.parse response_stash['Users blog contents > Create User blog contents']['body']
  machine_id = parsed_body['id']
  #replacing id in URL with stashed id from previous response
  transaction['fullPath'].gsub! '1', machine_id.to_s
end

before "ID XXX blog contents > Delete User blog contents" do |transaction|
  #reusing data from previous response here
  parsed_body = JSON.parse response_stash['Users blog contents > Create User blog contents']['body']
  machine_id = parsed_body['id']
  #replacing id in URL with stashed id from previous response
  transaction['fullPath'].gsub! '1', machine_id.to_s
end
