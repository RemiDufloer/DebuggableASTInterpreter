Extension { #name : 'OCBlockNode' }

{ #category : '*DebuggableASTInterpreter' }
OCBlockNode >> sourceCode [
	^ [ super sourceCode ] on: Exception do: [ '' ]
]
