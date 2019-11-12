//
//  RPCommentFactoryTest.swift
//  R-P-chalangeTests
//
//  Created by Dzmitry Kudrashou on 2019-11-11.
//  Copyright © 2019 Dzmitry Kudrashou. All rights reserved.
//

import XCTest
@testable import R_P_chalange

class RPCommentFactoryTest: XCTestCase {
	private typealias TestableObject = RPCommentFactory
	
    func testToUniqueData() {
		var previusElements: [TestableObject.CommentType] = []
		for objectType in TestableObject.ObjectValue.allCases {
			let object1 = TestableObject.newComment(for: objectType)
			let object2 = TestableObject.newComment(for: objectType)
			XCTAssertEqual(object1, object2)
			XCTAssertFalse(previusElements.contains(object1))
			previusElements.append(object1)
		}
    }
}
