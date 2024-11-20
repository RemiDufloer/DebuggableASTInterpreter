Class {
	#name : 'DASTNilNode',
	#superclass : 'Object',
	#category : 'DebuggableASTInterpreter-Node',
	#package : 'DebuggableASTInterpreter',
	#tag : 'Node'
}

{ #category : 'reflective operations' }
DASTNilNode >> doesNotUnderstand: aMessage [


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

{ #category : 'accessing' }
DASTNilNode >> sourceCode [
	^'(unknown source)'
]
