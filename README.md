SGraphViz
=========

Graph layouting interop for Squeak

Installation
------------
A Metacello configuration will be provided soon, until then you have to execute the following steps:

1. Install FFI (the preference "Allow underscore selectors" must be enabled):

```Smalltalk
(Installer repository: 'http://source.squeak.org/FFI')
	install: 'FFI-Pools';
	install: 'FFI-Kernel';
	install: 'FFI-Tests';
	install: 'FFI-Win32';
	install: 'FFI-MacOS';
	install: 'FFI-Unix'.
```

2. Install filetree.

3. git clone...

4. load