Class {
	#name : 'DASTProgrammState',
	#superclass : 'Object',
	#instVars : [
		'currentContext',
		'programCounter',
		'node',
		'dnu',
		'return'
	],
	#category : 'DebuggableASTInterpreter',
	#package : 'DebuggableASTInterpreter'
}

{ #category : 'accessing' }
DASTProgrammState >> currentContext [

	^ currentContext
]

{ #category : 'accessing' }
DASTProgrammState >> currentContext: anObject [

	currentContext := anObject
]

{ #category : 'accessing' }
DASTProgrammState >> dnu [

	^ dnu
]

{ #category : 'accessing' }
DASTProgrammState >> dnu: anObject [

	dnu := anObject
]

{ #category : 'testing' }
DASTProgrammState >> isAssignment [

	^ self node isAssignment
]

{ #category : 'testing' }
DASTProgrammState >> isInstantiationMessage [

	^ node isInstantiationMessage
]

{ #category : 'testing' }
DASTProgrammState >> isMessage [

	^ self node isMessage 
]

{ #category : 'testing' }
DASTProgrammState >> isMessageSend [ 

	^ self node isMessageSend 
]

{ #category : 'testing' }
DASTProgrammState >> isReturn [ 

	^ self node isReturn  
]

{ #category : 'as yet unclassified' }
DASTProgrammState >> modified: assBad result: result solveurOriginal: solveGood solveurModified: solveBad shift: baseShift [

result add: (EchoDivergenceAssign
								reference: self
								modified: assBad
								flow: true
								state: false).
							solveGood remove: self.
							solveBad remove: assBad.
	^ baseShift max:
								         self programCounter - assBad programCounter
]

{ #category : 'testing' }
DASTProgrammState >> node [

	^ node ifNil: [^  DASTNilNode new   ]
]

{ #category : 'accessing' }
DASTProgrammState >> node: anObject [
	node := anObject
]

{ #category : 'accessing' }
DASTProgrammState >> programCounter [

	^ programCounter
]

{ #category : 'accessing' }
DASTProgrammState >> programCounter: anObject [

	programCounter := anObject
]

{ #category : 'as yet unclassified' }
DASTProgrammState >> reference: assGood result: result solveurOriginal: solveGood solveurModified: solveBad shift: baseShift [

	result add: (EchoDivergenceAssign
			 reference: assGood
			 modified: self
			 flow: true
			 state: false).
	solveGood remove: assGood.
	solveBad remove: self.
	^ baseShift max: assGood programCounter - self programCounter
]

{ #category : 'accessing' }
DASTProgrammState >> returnValue [

	^ return 
]

{ #category : 'accessing' }
DASTProgrammState >> returnValue: aValue [

	return := aValue
]

{ #category : 'accessing - structure variables' }
DASTProgrammState >> state: aDastInterpreter [

	self programCounter: aDastInterpreter programCounter .
	self currentContext: (aDastInterpreter currentContext copy) .
	self node: ([aDastInterpreter currentContext currentNode copy] onErrorDo: [ DASTNilNode new ]).
	self dnu: aDastInterpreter isDNU .
	^ self
]
