# SGraphViz

SGraphViz is a fork from http://www.squeaksource.com/GraphViz.html. It provides interoperability between Squeak and the
[GraphViz](http://www.graphviz.org/) graph layouting programs.

## Installation

A Metacello configuration will be provided soon, in the meantime you have to execute the following steps:

1. Install FFI (the preference `Allow underscore selectors` must be enabled):
	```Smalltalk
	(Installer repository: 'http://source.squeak.org/FFI')
		install: 'FFI-Pools';
		install: 'FFI-Kernel';
		install: 'FFI-Tests';
		install: 'FFI-Win32';
		install: 'FFI-MacOS';
		install: 'FFI-Unix'.
	```

2. Install filetree, see [dalehenrich/filetree](https://github.com/dalehenrich/filetree)
3. git clone `git@github.com:leoschweizer/SGraphViz.git`
4. Load SGraphVizPackages via Monticello and FileTree
