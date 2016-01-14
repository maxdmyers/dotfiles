#!/bin/sh
#
# Composer
#
# This installs Composer globally.

# Check for Composer
if test ! $(which composer)
then
  echo "  Installing Composer for you."

  ruby -e "$(curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer)"

fi

exit 0
