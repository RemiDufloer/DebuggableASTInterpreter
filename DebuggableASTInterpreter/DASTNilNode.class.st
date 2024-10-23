Class {
	#name : 'DASTNilNode',
	#superclass : 'Object',
	#category : 'DebuggableASTInterpreter-Node',
	#package : 'DebuggableASTInterpreter',
	#tag : 'Node'
}

{ #category : 'reflective operations' }
DASTNilNode >> doesNotUnderstand: aMessage [

	1 haltOnce.
	^ false
]

{ #category : 'accessing' }
DASTNilNode >> methodNode [

	^ self
]

{ #category : 'accessing' }
DASTNilNode >> selector [

	^ self
]
