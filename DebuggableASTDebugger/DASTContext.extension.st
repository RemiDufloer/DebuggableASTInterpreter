Extension { #name : 'DASTContext' }

{ #category : '*DebuggableASTDebugger' }
DASTContext >> method [
	^self methodOrBlock nodeAST compiledMethod
]

{ #category : '*DebuggableASTDebugger' }
DASTContext >> namedTempAt: index [
	^ self variablesDict at: (tempVarsNamesIndexes keyAtValue: index)
]

{ #category : '*DebuggableASTDebugger' }
DASTContext >> tempNamed: aTempVarName [
	^ self variablesDict at: aTempVarName
]

{ #category : '*DebuggableASTDebugger' }
DASTContext >> tempNames [
	^ variablesDict keys
]

{ #category : '*DebuggableASTDebugger' }
DASTContext >> top [
	stack ifEmpty: [ ^ #emptyStack ].
	^ stack top
]
