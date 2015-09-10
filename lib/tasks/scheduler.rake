require "#{Rails.root}/app/helpers/application_helper"
include ApplicationHelper

desc "This task is called by the Heroku scheduler add-on"

  task :convert_csv => :environment do
    convert_to_active_record
  end

  task :clear_data => :environment do
    Institution.destroy_all
  end