#!/bin/bash
ddev config --docroot=web --project-type=php --omit-containers=db
wget -c https://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz
tar xvzf dokuwiki-stable.tgz --strip-components=1 -C web
rm dokuwiki-stable.tgz
ddev start
ddev launch /install.php
