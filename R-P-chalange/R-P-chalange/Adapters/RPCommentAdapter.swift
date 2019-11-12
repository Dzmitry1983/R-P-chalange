//
//  RPCommentAdapter.swift
//  R-P-chalange
//
//  Created by Dzmitry Kudrashou on 2019-11-11.
//  Copyright © 2019 Dzmitry Kudrashou. All rights reserved.
//

import Foundation

class RPCommentAdapter {
	
	private enum ValuesName: String {
		case id = "id"
		case parrentCommentId = "parrentCommentId"
		case text = "text"
	}
	
	class func rpComment(from codableComment: ICodableComment) -> RPComment {
		let comment = RPComment()
		if let id = codableComment.commentInfo[ValuesName.id.rawValue] {
			comment.id = Int(id) ?? 0
		}
		
		if let parrentCommentId = codableComment.commentInfo[ValuesName.parrentCommentId.rawValue] {
			comment.parrentCommentId = Int(parrentCommentId)
		}
		
		if let text = codableComment.commentInfo[ValuesName.text.rawValue] {
			comment.text = text
		}
		
		return comment
	}
	
	class func serverComment(from rpComment: RPComment) -> ICodableComment {
		let comment = CommentServerModel()
		comment.commentInfo[ValuesName.id.rawValue] = "\(rpComment.id)"
		if let parrentCommentId =  rpComment.parrentCommentId {
			comment.commentInfo[ValuesName.parrentCommentId.rawValue] = "\(parrentCommentId)"
		}
		comment.commentInfo[ValuesName.text.rawValue] = rpComment.text
		return comment
	}
}
