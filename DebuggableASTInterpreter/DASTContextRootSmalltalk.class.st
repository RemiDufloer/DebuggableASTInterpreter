"
I'm the first context, the one who accesses global variables. 
I must be refactored when contexts start to use DASTEnvironments
"
Class {
	#name : 'DASTContextRootSmalltalk',
	#superclass : 'DASTContext',
	#category : 'DebuggableASTInterpreter-Contexts',
	#package : 'DebuggableASTInterpreter',
	#tag : 'Contexts'
}

{ #category : 'accessing - private' }
DASTContextRootSmalltalk >> allInstVars [ 
	^#()
]

{ #category : 'accessing - private' }
DASTContextRootSmalltalk >> allTemps [
	^ #()
]

{ #category : 'accessing' }
DASTContextRootSmalltalk >> arguments [

	^ {  } asOrderedCollection
]

{ #category : 'converting' }
DASTContextRootSmalltalk >> asContext [

	^ [ Processor terminateRealActive] asContext
]

{ #category : 'accessing' }
DASTContextRootSmalltalk >> assignVariable: name value: value [
	(self findVariable: name)
	   ifNotNil: [ self evaluator environment setGlobal: name value: value. ^ true ].
	^ false
]

{ #category : 'testing' }
DASTContextRootSmalltalk >> belongsToDoIt [

	^ false
]

{ #category : 'API-lookup' }
DASTContextRootSmalltalk >> findLocalVariable: aName [
	^ nil
		
]

{ #category : 'accessing' }
DASTContextRootSmalltalk >> findVariable: aName [
	^ self findGlobalVariable: aName
]

{ #category : 'gt-extension' }
DASTContextRootSmalltalk >> gtInspectorSourceIn: composite [
	<gtInspectorPresentationOrder: 30> 
	''
]

{ #category : 'accessing' }
DASTContextRootSmalltalk >> isBlockContext [
	^false
]

{ #category : 'accessing' }
DASTContextRootSmalltalk >> isRoot [ 
	^true
]

{ #category : 'accessing' }
DASTContextRootSmalltalk >> isUnwindContext [
	"is this context for  method that is marked?"
	^ self shouldNotImplement 
]

{ #category : 'accessing' }
DASTContextRootSmalltalk >> methodClass [
	^ nil
]

{ #category : 'converting' }
DASTContextRootSmalltalk >> privCopyStackInContext: newContext [

	"nothing to copy when self isRoot"

	
]

{ #category : 'gt-extension' }
DASTContextRootSmalltalk >> sourceCode [
	^ ''
]

{ #category : 'as yet unclassified' }
DASTContextRootSmalltalk >> temps: aCollection [ 
	self shouldBeImplemented.
]
