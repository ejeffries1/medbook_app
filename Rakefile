# frozen_string_literal: true
ENV["SINATRA_ENV"] ||= "development"

require "bundler/gem_tasks"
require_relative './config/environment'
require 'sinatra/activerecord/rake'
#require "rubocop/rake_task"

#RuboCop::RakeTask.new

task default: :rubocop

task :environment do
    require_relative './config/environment'
  end

