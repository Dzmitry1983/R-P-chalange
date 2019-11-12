//
//  AnnotationServerModelTest.swift
//  R-P-chalangeTests
//
//  Created by Dzmitry Kudrashou on 2019-11-11.
//  Copyright © 2019 Dzmitry Kudrashou. All rights reserved.
//

import XCTest
@testable import R_P_chalange

class AnnotationServerModelTest: XCTestCase {
    private typealias TestableObject = AnnotationServerModel
	private var testObject: TestableObject!
	private var testEmptyObject: TestableObject!
	private let defaultValue: [String: String] = ["Key1": "Value1", "Key2": "Value2"]
	
    override func setUp() {
		self.testObject = TestableObject()
		self.testEmptyObject = TestableObject()
		
		self.testObject.anotationInfo = self.defaultValue
    }

    override func tearDown() {
    }

	//I know that this code is too stupid, but tests have to be stupid to avoid a mistake that can have an affect to the future
	func testEquatable() {
		let copyOfTestObject: TestableObject! = self.testObject.copy() as? TestableObject
		let copyOfTestEmptyObject: TestableObject! = self.testEmptyObject.copy() as? TestableObject
		
		//test anotationInfo
		XCTAssertEqual(copyOfTestObject, self.testObject)
		XCTAssertEqual(copyOfTestEmptyObject, self.testEmptyObject)
		copyOfTestObject.anotationInfo["Key1"] = ""
		copyOfTestEmptyObject.anotationInfo = ["test":""]
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

	//I want to test that objects can be coded/decoded
	func testCodeDecode() {
		let decoder = JSONDecoder()
		let encoder = JSONEncoder()
		var tempData: Data?
		var tempDecodedObject: TestableObject?
		
		//test that object can be encoded
		XCTAssertNoThrow(tempData = try encoder.encode(self.testObject))
		guard let objectData = tempData else { return }
		XCTAssertNoThrow(tempData = try encoder.encode(self.testEmptyObject))
		guard let emptyObjectData = tempData else { return }
		
		//test that object can be decoded
		
		XCTAssertNoThrow(tempDecodedObject = try decoder.decode(TestableObject.self, from: objectData))
		guard let decodedObject = tempDecodedObject else { return }
		XCTAssertNoThrow(tempDecodedObject = try decoder.decode(TestableObject.self, from: emptyObjectData))
		guard let decodedEmptyObject = tempDecodedObject else { return }
		
		XCTAssertEqual(decodedObject, self.testObject)
		XCTAssertEqual(decodedEmptyObject, self.testEmptyObject)
	}
}
