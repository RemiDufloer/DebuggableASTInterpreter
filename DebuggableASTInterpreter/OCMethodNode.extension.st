Extension { #name : 'OCMethodNode' }

{ #category : '*DebuggableASTInterpreter' }
OCMethodNode >> primitive [ 
	^ self primitiveFromPragma num
]
