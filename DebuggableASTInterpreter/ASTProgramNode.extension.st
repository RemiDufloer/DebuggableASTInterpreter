Extension { #name : 'ASTProgramNode' }

{ #category : '*DebuggableASTInterpreter' }
ASTProgramNode >> asBlockEvaluated [
	| sequenceNode blockNode messageNode |

	sequenceNode := self asSequenceNode transformLastToReturn.
	blockNode := RBBlockNode body: sequenceNode.
	messageNode := RBMessageNode receiver: blockNode selector: #value.
	
	^ messageNode
]

{ #category : '*DebuggableASTInterpreter' }
ASTProgramNode >> isDASTClosure [ 
	^false
]
