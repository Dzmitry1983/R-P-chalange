//
//  RPComment.swift
//  R-P-chalange
//
//  Created by Dzmitry Kudrashou on 2019-11-11.
//  Copyright © 2019 Dzmitry Kudrashou. All rights reserved.
//

import Foundation

class RPComment: Equatable, NSCopying {

	//I wanted to add any data that I can use for unit testing
	var id: Int = 0
	var parrentCommentId: Int?
	var text: String = ""
	
	//MARK: Equatable
	static func == (lhs: RPComment, rhs: RPComment) -> Bool {
		//if text value could be big, I would use hashValue like
		//(lhs.text.hashValue == rhs.text.hashValue) && (lhs.text == rhs.text)
		
		return (lhs === rhs) || (lhs.id == rhs.id && lhs.parrentCommentId == rhs.parrentCommentId && lhs.text == rhs.text)
	}
	
	//MARK: NSCopying
	func copy(with zone: NSZone? = nil) -> Any {
		let copy = RPComment()
		copy.id = self.id
		copy.parrentCommentId = self.parrentCommentId
		copy.text = self.text
		return copy
	}
}
