//
//  RPAnnotation.swift
//  R-P-chalange
//
//  Created by Dzmitry Kudrashou on 2019-11-11.
//  Copyright © 2019 Dzmitry Kudrashou. All rights reserved.
//

import Foundation

class RPAnnotation: Equatable, NSCopying {
	//I wanted to add any data that I can use for unit testing
	var id: Int = 0
	var parrentCommentId: Int = 0
	var position: (line: Int, offset: Int) = (0, 0)
	var text: String = ""
	
	//MARK: Equatable
	static func == (lhs: RPAnnotation, rhs: RPAnnotation) -> Bool {
		return (lhs === rhs) || (lhs.id == rhs.id && lhs.parrentCommentId == rhs.parrentCommentId && lhs.position == rhs.position && lhs.text == rhs.text)
	}
	
	//MARK: NSCopying
	func copy(with zone: NSZone? = nil) -> Any {
		let copy = RPAnnotation()
		copy.id = self.id
		copy.parrentCommentId = self.parrentCommentId
		copy.position = self.position
		copy.text = self.text
		return copy
	}
}
