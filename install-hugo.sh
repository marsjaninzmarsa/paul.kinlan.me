HUGO_VERSION=0.24.1

set -x
set -e

# Install Hugo if not already cached or upgrade an old version.
if [ ! -e .hugo ] || ! [[ `hugo version` =~ v${HUGO_VERSION} ]]; then
  wget --no-check-certificate https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -P .hugo/
  tar xvzf .hugo/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -C .hugo/
  cp .hugo/hugo ./hugo
fi