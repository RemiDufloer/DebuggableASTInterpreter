Extension { #name : 'ASTBlockNode' }

{ #category : '*DebuggableASTInterpreter' }
ASTBlockNode >> sourceCode [
	^ [ super sourceCode ] on: Exception do: [ '' ]
]
