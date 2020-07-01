//
//  ImpactPbxproj.swift
//  Pbxproj-verifyKit
//
//  Created by Usachev Vladislav on 01.07.2020.
//

import Foundation

public struct ImpactPbxproj {

	public var isNeedCheckImpact: Bool {
		self.findPbxprojFiles().count > 0
	}

	public init() { }

	public func check() {
		let filesPaths = findPbxprojFiles()
		for filePath in filesPaths {
			do {
				let pbxChecker = try XcodeProject(with: filePath).pbxCheker
			} catch {
				fatalError("wrong path to xcodeproj: \(filePath)")
			}
		}
	}

	private func findPbxprojFiles() -> [String] {
		let output = Git.findDiffFiles()
		return output
			.components(separatedBy: "\n")
			.filter { filePath in
				let fileExtension = filePath.components(separatedBy: ".").last
				if fileExtension == "pbxproj" {
					return true
				}
				return false
			}
	}
}
