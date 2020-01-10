export JAEHONG=~/.jaehong
export PATH=$JAEHONG/bin:$PATH

function loadScripts() {
  local dir=$1

  for f in "$dir"/*
  do
    if [ -d ${f} ]; then
      loadScripts $f
    elif [ ${f} != "${JAEHONG}/shell/main.sh" ]; then
      source $f
    fi
  done
}

loadScripts "${JAEHONG}/shell"
