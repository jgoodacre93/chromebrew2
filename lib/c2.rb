# Parse c2 options

require 'optparse'

options = {}
OptionParser.new do |opt|
  opt.banner = "Usage: #{File.basename $0} [options]"

  # help banner
  opt.on '-h', '-?', '--help', "Prints this help" do
    puts opt
  end

  opt.on '-v', '--[no-]verbose', "Be verbose" do |v|
    options[:verbose] = v
  end

  opt.on '-V', '--version', "Print version and license information" do
    require 'c2/misc/about'
    puts CREW_VERSION_OUTPUT
  end
end.parse!
