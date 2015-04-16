#!/bin/sh

drush si -y

drush vset site_name 'Docker Demo Site'

# Enable page caching so we can demonstrate Varnish
drush vset cache 1

