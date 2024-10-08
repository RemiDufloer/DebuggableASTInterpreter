"
I represent a blockClosure, I am partially polymorphic with BlockClosure
"
Class {
	#name : 'DASTClosure',
	#superclass : 'Object',
	#instVars : [
		'outerContext',
		'sourceCode',
		'nodeAST',
		'numArgs'
	],
	#category : 'DebuggableASTInterpreter-Closures',
	#package : 'DebuggableASTInterpreter',
	#tag : 'Closures'
}

{ #category : 'accessing' }
DASTClosure >> argumentCount [
	^numArgs 
]

{ #category : 'accessing' }
DASTClosure >> argumentNames [
	^ (nodeAST arguments collect: [:arg | arg name]) asArray.
]

{ #category : 'accessing' }
DASTClosure >> asText [
	^ self sourceCode asText
]

{ #category : 'accessing' }
DASTClosure >> body [
	
	^ nodeAST body
]

{ #category : 'accessing' }
DASTClosure >> closure [

	^ nil
]

{ #category : 'accessing' }
DASTClosure >> compiledCode [

	self subclassResponsibility
]

{ #category : 'initialization' }
DASTClosure >> initializeWith: aRBNode [

	self nodeAST: aRBNode
]

{ #category : 'accessing' }
DASTClosure >> isBlock [ 
	self subclassResponsibility 
]

{ #category : 'accessing' }
DASTClosure >> isEnsure [
	^ false
]

{ #category : 'testing' }
DASTClosure >> isMessageValue [
	"returns true if self is the 'value' message sent to a block (or any of its variants)"
	self subclassResponsibility 
]

{ #category : 'accessing' }
DASTClosure >> isOnDo [
	^ false
]

{ #category : 'testing' }
DASTClosure >> isPrimitive [
	self subclassResponsibility 
]

{ #category : 'accessing' }
DASTClosure >> nodeAST [
	^ nodeAST
]

{ #category : 'accessing' }
DASTClosure >> nodeAST: aRBNode [

	sourceCode := aRBNode sourceCode.
	nodeAST := aRBNode.
	numArgs := nodeAST arguments size
]

{ #category : 'accessing' }
DASTClosure >> primitive [
	self subclassResponsibility 
]

{ #category : 'accessing' }
DASTClosure >> selector [
	self subclassResponsibility 
]

{ #category : 'accessing' }
DASTClosure >> sourceCode [
	^ sourceCode
]
