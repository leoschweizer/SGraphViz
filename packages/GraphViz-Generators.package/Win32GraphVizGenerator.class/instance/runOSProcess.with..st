external
runOSProcess: command with: arguments

	| shell processHandle |
	shell := Win32Shell new.
	processHandle := shell
		shellExecute: nil
		lpOperation: 'open'
		lpFile: command
		lpParameters: arguments
		lpDirectory: self outputPath
		nShowCmd: 0.
	Win32Utils 
		waitForSingleObject: processHandle 
		with: self durationToWaitForGenerating asMilliSeconds.