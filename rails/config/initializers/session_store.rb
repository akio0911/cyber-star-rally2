# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_csr_session',
  :secret      => 'e01f22c255ffbbe52ac7fb0000fc6a82854520640121fb0430da2548903eb4281596a88ebf4e92495de982d04f60880d6db291017e2fcfffc07d641030ab7f2f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
