import ArgumentParser


internal struct PbxprojVerify: ParsableCommand {

	static var configuration = CommandConfiguration(
		abstract: "Check and validate your pbxproj",
		subcommands: [Impact.self]
	)
}

PbxprojVerify.main()
