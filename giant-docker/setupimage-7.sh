#!/bin/bash

cd ~
source ~/.rbenv_setup
cd /var/govuk/govuk-puppet
puppet module install puppet-zypprepo --modulepath /var/govuk/govuk-puppet/modules:/var/govuk/govuk-puppet/vendor/modules
puppet module install puppet-python --version=1.19.0 --modulepath /var/govuk/govuk-puppet/modules:/var/govuk/govuk-puppet/vendor/modules
