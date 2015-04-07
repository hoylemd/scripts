ENV="path/to/env/root"
SERVICENAME="servicename"
INSTALLCMD="make install"
RUNCMD="python executable.py"

if [ -n "$ENV" ]; then
  source $ENV/bin/activate
fi

if [ -n "$SERVICENAME"]; then
  sudo supervisorctl stop $SERVICENAME
fi

git co master
git fetch upstream
git merge upstream/master

if [ -n "$INSTALLCMD" ]; then
  $INSTALLCMD
fi

if [ -n "$RUNCMD" ]; then
  $RUNCMD
fi
