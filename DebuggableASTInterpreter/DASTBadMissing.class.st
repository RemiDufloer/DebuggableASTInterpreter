Class {
	#name : 'DASTBadMissing',
	#superclass : 'Object',
	#instVars : [
		'currentContext',
		'programCounter',
		'node',
		'label'
	],
	#category : 'DebuggableASTInterpreter',
	#package : 'DebuggableASTInterpreter'
}

{ #category : 'accessing' }
DASTBadMissing >> currentContext [

	^ currentContext
]

{ #category : 'accessing' }
DASTBadMissing >> currentContext: anObject [

	currentContext := anObject
]

{ #category : 'initialization' }
DASTBadMissing >> initialize [ 

	label := 'badMissing'.
	programCounter := -1.
	node := DASTNilNode new.  
	
]

{ #category : 'accessing' }
DASTBadMissing >> label [

	^ label
]

{ #category : 'accessing' }
DASTBadMissing >> label: anObject [

	label := anObject
]

{ #category : 'accessing' }
DASTBadMissing >> node [

	^ node
]

{ #category : 'accessing' }
DASTBadMissing >> node: anObject [

	node := anObject
]

{ #category : 'accessing' }
DASTBadMissing >> programCounter [

	^ programCounter
]

{ #category : 'accessing' }
DASTBadMissing >> programCounter: anObject [

	programCounter := anObject
]

{ #category : 'accessing - structure variables' }
DASTBadMissing >> state [

	^ nil
]
