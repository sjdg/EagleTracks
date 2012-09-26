# Be sure to restart your server when you modify this file.

#config.gem "mongo_mapper"
#config.gem "mongo_session_store", :lib => "mongo_session_store/mongo_mapper"


EagleTracks::Application.config.session_store = :active_record_store

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# EagleTracks::Application.config.session_store :active_record_store
