#!/bin/bash

# Installs dependencies for TF2 setup on Ubuntu 14.04 LTS servers.
# Copyright (C) 2015 Shen Zhou Hong - GNU GPL v 3

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# First checks if the script itself is ran as root by calling check_root module
./checkroot.sh

# Installs system-wide dependencies
function system_dependencies () {
    # system_dependencies configuration
    git_install=true

    # Upgrades server with new packages
    if [[ $git_install=true ]]; then
        echo "Installing git system-wide dependency..."
        apt-get --assume-yes install git
    fi
}

# Calls function. Note that there's no exit command - this script is meant to
# be used in conjunction with the rest of the bash setup system.
system_dependencies
