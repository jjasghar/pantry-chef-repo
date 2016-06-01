# Policyfile.rb - Describe how you want Chef to configure your workstation.
#
# For more information on the Policyfile feature, visit
# https://github.com/opscode/chef-dk/blob/master/POLICYFILE_README.md

name 'pantry'
# Get cookbooks from supermarket.chef.io
default_source :community

cookbook 'jj-mac-bootstrap', github: 'jjasghar/jj-mac-bootstrap', branch: 'master'

##########
# Run List
# chef-client will run these recipes in the order specified.
# Modify this to include other cookbooks you wish to use, separating
# each recipe name with commas. For example:
#
# run_list(
#   'pantry',
#   'mycookbook'
# )
#
# Add `cookbook` entries for cookbooks that are not found on
# supermarket. See the POLICYFILE_README.md for more information.

run_list(
  'pantry',
  'jj-mac-bootstrap'
)

############
# Attributes
# Feel free to modify these values, or add your own attributes for
# other cookbooks.
# Specify values as a space separated list of words. For example,
# %w(git go packer tree)
#
# packages for OS X
default['homebrew']['casks']      = %w(1password alfred dropbox caffeine flux iterm2 slack thunderbird tunnelblick vagrant vlc virtualbox)
default['homebrew']['formula']    = %w(aspell bash_completion curl git hub openssl)
default['homebrew']['taps']       = %w()
# packages for Windows
default['chocolatey']['packages'] = %w()
