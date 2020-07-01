//
//  XcodeProject.swift
//  pbxproj-verifyKit
//
//  Created by Usachev Vladislav on 01.07.2020.
//

import Foundation
import XcodeProj

internal struct XcodeProject {

	let pbxCheker: PBXProjectChecker

	init(with xcodeProjPath: String) throws {
		let xcodeProject = try XcodeProj(pathString: xcodeProjPath)
		self.pbxCheker = PBXProjectChecker(with: xcodeProject.pbxproj)
	}
}


