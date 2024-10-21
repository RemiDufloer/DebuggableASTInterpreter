Extension { #name : 'ASTMethodNode' }

{ #category : '*DebuggableASTInterpreter' }
ASTMethodNode >> primitive [ 
	^ self primitiveFromPragma num
]
