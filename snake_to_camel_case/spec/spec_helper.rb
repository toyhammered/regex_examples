require File.expand_path('../../lib/case_converter.rb', __FILE__)

RSpec.configure do |config|

	# Use color in STDOUT
	config.color = true

	# Use color not only in STDOUT but also in pagers and files
	config.tty = true

	config.formatter = :documentation

end