*GraphViz-Core
waitForSingleObject: hHandle with: dwMilliseconds
	
	<apicall: ulong 'WaitForSingleObject' (ulong ulong) module: 'kernel32.dll'>
	^ self externalCallFailed