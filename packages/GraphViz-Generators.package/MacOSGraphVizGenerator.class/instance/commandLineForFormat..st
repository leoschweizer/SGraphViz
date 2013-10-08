accessing
commandLineForFormat: outputFormat

	| file |
	file := self outputCommandLineFileNameFor: outputFormat.
	
	^ String streamContents:
		[:stream |
		stream
			nextPutAll: self outputPathForCommandLine;
			nextPutAll: self dotFileName;
			nextPutAll: ' -s100 -y -T';
			nextPutAll: outputFormat;
			nextPutAll: ' -o ';
			nextPutAll: file]