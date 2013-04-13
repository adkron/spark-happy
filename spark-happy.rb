#!/usr/bin/env ruby

require "rubygems"
require "grit"

repo_path = ARGV.first
branch = ARGV.last

repo = Grit::Repo.new(repo_path)

time_series = [0]
repo.commits(branch, 1000).each do |commit|
  msg = commit.message
  add = msg.include?("#happy")
  sub = msg.include?("#sad")
  if add
    time_series << time_series.last + 1
  elsif sub
    time_series << time_series.last - 1
  else
    time_series << time_series.last
  end
end

puts `spark #{time_series.join(" ")}`
