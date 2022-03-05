require 'optparse'

cmdname = File.basename($0)

cmd_list = {
  'install <pkgName>' => 'Install package(s)',
  'remove  <pkgName>' => 'Remove package(s)',
  'search  <pattern>' => 'Search package(s) based on <pattern>'
}

$opt = {}
OptionParser.new do |parser|
  parser.banner = "Options:"

  # print corresponding info and exit immediately if the following params are given
  parser.on '-h', '--help',         "Prints this help"                      { print_help; exit 0 }
  parser.on '-V', '--version',      "Print version and license information" { print_info; exit 0 }
  #################################################################################

  parser.on '-v', '--[no-]verbose', 'Show extra information.' {|v| options[:verbose] = v }
end.parse!

# pass given params to command function
func_name = "#{ARGV[0]}_cmd"

if respond_to?(func_name.to_sym)
  send(func_name, ARGV[1..-1])
else
  abort "Invaild command: #{ARGV[0]}".lightred
end
