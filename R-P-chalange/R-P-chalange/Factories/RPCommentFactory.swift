//
//  RPCommentFactory.swift
//  R-P-chalange
//
//  Created by Dzmitry Kudrashou on 2019-11-11.
//  Copyright © 2019 Dzmitry Kudrashou. All rights reserved.
//

import Foundation

class RPCommentFactory {
	
	//I used typealias because it helps to avoid static type when I test this class
	typealias CommentType = RPComment
	
	//MARK: - Nested enum
	enum ObjectValue: CaseIterable {
		case empty
		case withAFakeData
	}
	
	//MARK: - public functions
	class func newComment(for objectValue: ObjectValue) -> CommentType {
		switch objectValue {
		case .empty:
			return CommentType()
		case .withAFakeData:
			let returnValue = CommentType()
			returnValue.id = 14
			returnValue.parrentCommentId = 10
			returnValue.text = "La-la-la-la"
			return returnValue
		}
	}
}
