#!/bin/bash

set -o nounset
set -o pipefail
set -o errexit

demo() {
 if [[ "$USER" == "caroline_lin" ]]
 then
	 local pbrt=~/pbrt-exec
 else
	 local pbrt=pbrt
 fi 
 $pbrt bathroom-demo.pbrt 
}

low() {
  ./temp.py --resx 400 --resy 400 --nsamples 32 --depth 3 # 10 sec render / frame
}

medium(){
  ./temp.py --resx 500 --resy 500 --nsamples 128 --depth 6 # 2 min render / frame 
}

high(){
  ./temp.py --resx 1000 --resy 1000 --nsamples 512 --depth 8 # ?? / frame
}

"$@"
