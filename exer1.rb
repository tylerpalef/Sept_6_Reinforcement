require 'HTTParty'

password_response = HTTParty.get('https://makemeapassword.org/api/v1/passphrase/json?pc=100&wc=2')

password_json = JSON.parse(password_response.body)
password_obj = password_json["pws"]

puts password_obj
