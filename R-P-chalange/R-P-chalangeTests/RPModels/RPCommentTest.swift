//
//  RPCommentTest.swift
//  R-P-chalangeTests
//
//  Created by Dzmitry Kudrashou on 2019-11-11.
//  Copyright © 2019 Dzmitry Kudrashou. All rights reserved.
//

import XCTest
@testable import R_P_chalange

class RPCommentTest: XCTestCase {
	private typealias TestableObject = RPComment
	private var testObject: TestableObject!
	private var testEmptyObject: TestableObject!
	private let defaultId: Int = 78
	private let defaultParrentCommentId: Int? = 42
	private let defaultText: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit..."

    override func setUp() {
		self.testObject = TestableObject()
		self.testEmptyObject = TestableObject()
		
		self.testObject.id = self.defaultId
		self.testObject.parrentCommentId = self.defaultParrentCommentId
		self.testObject.text = self.defaultText
    }

    override func tearDown() {
    }

	//I know that this code is too stupid, but tests have to be stupid to avoid a mistake that can have an affect to the future
	func testEquatable() {
		var copyOfTestObject: TestableObject! = self.testObject.copy() as? TestableObject
		var copyOfTestEmptyObject: TestableObject! = self.testEmptyObject.copy() as? TestableObject
		
		//test id
		XCTAssertEqual(copyOfTestObject, self.testObject)
		XCTAssertEqual(copyOfTestEmptyObject, self.testEmptyObject)
		copyOfTestObject.id = 12
		copyOfTestEmptyObject.id = 12
		XCTAssertNotEqual(copyOfTestObject, self.testObject)
		XCTAssertNotEqual(copyOfTestEmptyObject, self.testEmptyObject)
		
		//test parrentCommentId
		copyOfTestObject = self.testObject.copy() as? TestableObject
		copyOfTestEmptyObject = self.testEmptyObject.copy() as? TestableObject
		XCTAssertEqual(copyOfTestObject, self.testObject)
		XCTAssertEqual(copyOfTestEmptyObject, self.testEmptyObject)
		copyOfTestObject.parrentCommentId = 12
		copyOfTestEmptyObject.parrentCommentId = 12
		XCTAssertNotEqual(copyOfTestObject, self.testObject)
		XCTAssertNotEqual(copyOfTestEmptyObject, self.testEmptyObject)
		
		//test text
		copyOfTestObject = self.testObject.copy() as? TestableObject
		copyOfTestEmptyObject = self.testEmptyObject.copy() as? TestableObject
		XCTAssertEqual(copyOfTestObject, self.testObject)
		XCTAssertEqual(copyOfTestEmptyObject, self.testEmptyObject)
		copyOfTestObject.text = "12"
		copyOfTestEmptyObject.text = "12"
		XCTAssertNotEqual(copyOfTestObject, self.testObject)
		XCTAssertNotEqual(copyOfTestEmptyObject, self.testEmptyObject)
		
	}
	
	//I want test that the object can be copied correctly
	func testNSCopying() {
		let copyOfTestObject: TestableObject! = self.testObject.copy() as? TestableObject
		let copyOfTestEmptyObject: TestableObject! = self.testEmptyObject.copy() as? TestableObject
		
		XCTAssertFalse(copyOfTestObject === self.testObject)
		XCTAssertFalse(copyOfTestEmptyObject === self.testEmptyObject)
		
		XCTAssertTrue(copyOfTestObject == self.testObject)
		XCTAssertTrue(copyOfTestEmptyObject == self.testEmptyObject)
	}

}
