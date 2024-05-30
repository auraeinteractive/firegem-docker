#!/bin/bash

if [ ! -d "./Firegem" ]; then
	git clone https://github.com/autocaret/Firegem/
	cd Firegem && git checkout release/2.5.0 && cd ..
else
	echo "Requirements satisfied."
fi

