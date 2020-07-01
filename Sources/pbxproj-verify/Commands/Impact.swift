//
//  Impact.swift
//  pbxproj-verify
//
//  Created by Usachev Vladislav on 01.07.2020.
//

import Foundation
import ArgumentParser

internal struct Impact: ParsableCommand {

	static var configuration = CommandConfiguration(
		abstract: "how current changes in pbxproj impact"
	)

	mutating func run() throws {
		
	}

}
