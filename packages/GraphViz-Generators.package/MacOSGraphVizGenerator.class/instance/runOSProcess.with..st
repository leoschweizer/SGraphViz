private
runOSProcess: command with: arguments 

	| helperCommand |
	helperCommand := '/opt/local/bin/', command.
	helperCommand := helperCommand, ' ', arguments.

	self runWithSystemFramework: helperCommand.
	