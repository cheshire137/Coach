# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_coach_session',
  :secret      => 'cf068de6e4cfac8a142a2e7a193fa8e72da69886b968ee58af79560ce8ead9918058865f66ffd133f18f993aeccbec1d49a9e1c295bc814c4d2ced17d82a2473'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
