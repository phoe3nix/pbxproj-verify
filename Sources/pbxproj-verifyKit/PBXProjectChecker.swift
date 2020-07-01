//
//  PBXProjectChecker.swift
//  Pbxproj-verifyKit
//
//  Created by Usachev Vladislav on 01.07.2020.
//

import Foundation
import XcodeProj

internal struct PBXProjectChecker {

	private let pbxproject: PBXProj

	init(with pbxProject: PBXProj) {
		self.pbxproject = pbxProject
	}
}
