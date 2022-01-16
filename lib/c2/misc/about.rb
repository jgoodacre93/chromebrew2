# This file defines information about chromebrew2 itself

# use the version from our gemspec file
require 'rubygems'
gemspec = Gem::Specification::load('chromebrew2.gemspec')

# the output of any chromebrew2 executable's --version option
CREW_VERSION_OUTPUT = <<~EOF
  #{File.basename $0} (chromebrew2) #{gemspec.version}

  Copyright (c) 2022 chromebrew2 Authors
  This programCis free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, version 3 of the License.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program. If not, see https://www.gnu.org/licenses/gpl-3.0.html.
EOF
