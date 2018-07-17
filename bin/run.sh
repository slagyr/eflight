#!/bin/bash

#jekyll serve -P 8080 --baseurl /eflight

pushd docs
#python -m SimpleHTTPServer 8001
python3 -m http.server 8002
popd