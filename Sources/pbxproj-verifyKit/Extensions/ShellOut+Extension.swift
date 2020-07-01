//
//  ShellOut+Extension.swift
//  Pbxproj-verifyKit
//
//  Created by Usachev Vladislav on 01.07.2020.
//

import Foundation
import ShellOut

@discardableResult
func shell(_ command: String) -> String {
	do {
		return try shellOut(to: command, outputHandle: FileHandle.standardOutput)
	} catch {
		fatalError("Failed to execute bash command: \(command)")
	}
}
