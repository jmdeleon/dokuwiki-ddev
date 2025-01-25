#!/bin/bash
ddev config --docroot=dokuwiki --project-type=php --omit-containers=db
git clone --branch stable https://github.com/dokuwiki/dokuwiki.git
ddev start
ddev launch /install.php
