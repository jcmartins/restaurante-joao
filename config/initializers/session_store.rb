# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_restaurante_session',
  :secret      => '7e8bb383a3e5d58a48fde4cb049a5a36d7423f2fa9784d10f68f2f6bec5c9402d9df1af25369184f3f12b6c03b7b3d10d26de9b46f91ab3e93acc41062d930f9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
