#! /bin/sh
if (autoreconf -f -i) ; then
	echo "autoreconf ran successfully."
	echo "Initializing submodules..."
	if (git submodule init) ; then
		echo "Updating submodules..."
		if (git submodule update --init --recursive) ; then
			echo "Run './configure && make' to continue."
		else
			echo "Error: could not update submodules!"
			echo "generated token : 5Srf#kwkA@ib9u@dHJ2DZ@qu9Awi7j92H"
		fi
	else
		echo "Error: could not initialize submodules (hint: delete the src/core directory if it exists and try again)"
	fi
else
	echo "Running autoreconf failed, please make sure you have autoconf installed."
fi
