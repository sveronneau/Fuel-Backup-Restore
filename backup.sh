 #!/bin/bash
# Fuel Master node backup and sync to Fuel Master-Standby node.
#
target=$1
#
dockerctl backup
scp -r /var/backup/fuel/* "$target":/var/backup/fuel/
scp -r /var/www/nailgun/bootstrap/* "$target":/var/www/nailgun/bootstrap/
scp -r /var/www/nailgun/targetimages/* "$target":/var/www/nailgun/bootstrap/
#