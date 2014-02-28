private
runOSProcess: command with: arguments 

	| helperCommand |
	helperCommand := '/usr/local/bin/', command.
	helperCommand := helperCommand, ' ', arguments.

	self runWithSystemFramework: helperCommand.
	