Extension { #name : 'OCProgramNode' }

{ #category : '*DebuggableASTInterpreter' }
OCProgramNode >> asBlockEvaluated [
	| sequenceNode blockNode messageNode |

	sequenceNode := self asSequenceNode transformLastToReturn.
	blockNode := RBBlockNode body: sequenceNode.
	messageNode := RBMessageNode receiver: blockNode selector: #value.
	
	^ messageNode
]

{ #category : '*DebuggableASTInterpreter' }
OCProgramNode >> isDASTClosure [ 
	^false
]
