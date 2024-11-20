Class {
	#name : 'DASTMessage',
	#superclass : 'Object',
	#instVars : [
		'selector',
		'arguments'
	],
	#category : 'DebuggableASTInterpreter-Contexts',
	#package : 'DebuggableASTInterpreter',
	#tag : 'Contexts'
}

{ #category : 'accessing' }
DASTMessage >> argument [

	^ arguments first
]

{ #category : 'accessing' }
DASTMessage >> arguments [

	^ arguments
]

{ #category : 'accessing' }
DASTMessage >> arguments: anObject [

	arguments := anObject
]

{ #category : 'accessing' }
DASTMessage >> selector [

	^ selector
]

{ #category : 'accessing' }
DASTMessage >> selector: anObject [

	selector := anObject
]
