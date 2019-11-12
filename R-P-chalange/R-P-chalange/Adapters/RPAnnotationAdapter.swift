//
//  RPAnnotationAdapter.swift
//  R-P-chalange
//
//  Created by Dzmitry Kudrashou on 2019-11-11.
//  Copyright © 2019 Dzmitry Kudrashou. All rights reserved.
//

import Foundation

class RPAnnotationAdapter {
	
	private enum ValuesName: String {
		case id = "id"
		case parrentCommentId = "parrentCommentId"
		case positionLine = "positionLine"
		case positionOffset = "positionOffset"
		case text = "text"
	}
	
	class func rpAnnotation(from codableAnnotation: ICodableAnnotation) -> RPAnnotation {
		let annotation = RPAnnotation()
		if let id = codableAnnotation.anotationInfo[ValuesName.id.rawValue] {
			annotation.id = Int(id) ?? 0
		}
		
		if let parrentCommentId = codableAnnotation.anotationInfo[ValuesName.parrentCommentId.rawValue] {
			annotation.parrentCommentId = Int(parrentCommentId) ?? 0
		}
		
		if let positionLine = codableAnnotation.anotationInfo[ValuesName.positionLine.rawValue] {
			annotation.position.line = Int(positionLine) ?? 0
		}
		
		if let positionOffset = codableAnnotation.anotationInfo[ValuesName.positionOffset.rawValue] {
			annotation.position.offset = Int(positionOffset) ?? 0
		}
		
		if let text = codableAnnotation.anotationInfo[ValuesName.text.rawValue] {
			annotation.text = text
		}
		
		return annotation
	}
	
	class func serverAnnotation(from rpAnnotation: RPAnnotation) -> ICodableAnnotation {
		let annotation = AnnotationServerModel()
		annotation.anotationInfo[ValuesName.id.rawValue] = "\(rpAnnotation.id)"
		annotation.anotationInfo[ValuesName.parrentCommentId.rawValue] = "\(rpAnnotation.parrentCommentId)"
		annotation.anotationInfo[ValuesName.positionLine.rawValue] = "\(rpAnnotation.position.line)"
		annotation.anotationInfo[ValuesName.positionOffset.rawValue] = "\(rpAnnotation.position.offset)"
		annotation.anotationInfo[ValuesName.text.rawValue] = rpAnnotation.text
		return annotation
	}
}
