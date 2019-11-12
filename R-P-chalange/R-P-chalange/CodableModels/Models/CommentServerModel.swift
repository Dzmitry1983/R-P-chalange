//
//  CommentServerModel.swift
//  R-P-chalange
//
//  Created by Dzmitry Kudrashou on 2019-11-11.
//  Copyright © 2019 Dzmitry Kudrashou. All rights reserved.
//

import Foundation

class CommentServerModel: ICodableComment, Codable, NSCopying, Equatable {
	
	var commentInfo: [String: String] = [:]
	
	//MARK: Equatable
	static func == (lhs: CommentServerModel, rhs: CommentServerModel) -> Bool {
		return (lhs === rhs) || (lhs.commentInfo == rhs.commentInfo)
	}

	//MARK: NSCopying
	func copy(with zone: NSZone? = nil) -> Any {
		let copy = CommentServerModel()
		copy.commentInfo = self.commentInfo
		return copy
	}

}
