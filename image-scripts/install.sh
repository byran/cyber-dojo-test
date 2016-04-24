#!/bin/bash

apk add --update build-base libxml2-dev libxslt-dev postgresql-dev ruby-dev libffi-dev

# Build nokogiri using system libraries, this will not happen when using
# the bundler install command
gem install nokogiri -v 1.6.7.2 -- --use-system-libraries

cd /usr/src/cyber-dojo/
bundler install --with development test

# Change to the correct version of simplecov
gem uninstall simplecov -v 0.11.2
gem install simplecov -v 0.11.1

# The gem install of simplecov will return a non-zero exit code as there is no
# rdoc so exit as successful, otherwise the image build will fail.
exit 0
