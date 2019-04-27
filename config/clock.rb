# frozen_string_literal: true
require 'clockwork'
include ClockWork

handler do |job|
	puts "Running #{job}"
end

# Examples
# every(10.seconds, 'frequent.job')
# every(3.minutes, 'less.frequent.job')
# every(1.hour, 'hourly.job')
# every(1.day, 'midnight.job', at: => '01:30')