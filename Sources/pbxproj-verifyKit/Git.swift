//
//  Git.swift
//  pbxproj-verifyKit
//
//  Created by Usachev Vladislav on 01.07.2020.
//

import Foundation
import ShellOut

public struct Git {

	static public func findDiffFiles() -> String {
		shell("git diff HEAD^ HEAD --name-only")
	}
}
