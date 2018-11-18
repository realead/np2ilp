set -e

#prepare test enviroment:

ENV_DIR="../p3"

if [ ! -d "$ENV_DIR" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  virtualenv -p python3 "$ENV_DIR"
  . "$ENV_DIR/bin/activate"
  pip install https://github.com/realead/exetest/zipball/master
else
  . "$ENV_DIR/bin/activate"
fi

pip freeze

#run tests
export  PATH="$PATH:../bin"
python -m unittest discover -s . -v
