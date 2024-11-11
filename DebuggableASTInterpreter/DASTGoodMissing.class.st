Class {
	#name : 'DASTGoodMissing',
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
DASTGoodMissing >> currentContext [

	^ currentContext
]

{ #category : 'accessing' }
DASTGoodMissing >> currentContext: anObject [

	currentContext := anObject
]

{ #category : 'initialization' }
DASTGoodMissing >> initialize [ 

	label := 'goodMissing'.
	programCounter := -1.
	node := DASTNilNode new.  
	
]

{ #category : 'accessing' }
DASTGoodMissing >> label [

	^ label
]

{ #category : 'accessing' }
DASTGoodMissing >> label: anObject [

	label := anObject
]

{ #category : 'accessing' }
DASTGoodMissing >> node [

	^ node
]

{ #category : 'accessing' }
DASTGoodMissing >> node: anObject [

	node := anObject
]

{ #category : 'accessing' }
DASTGoodMissing >> programCounter [

	^ programCounter
]

{ #category : 'accessing' }
DASTGoodMissing >> programCounter: anObject [

	programCounter := anObject
]

{ #category : 'accessing - structure variables' }
DASTGoodMissing >> state [

	^ nil
]
