=begin
require 'clockwork'
require './config/boot'
require './config/environment'
include Clockwork
module Clockwork
  every(1.minute, 'check_strikes') do
    Task.check_strikes
  end
end
=end
