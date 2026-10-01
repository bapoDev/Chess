Class {
	#name : 'MyBlackPawn',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'initialization' }
MyBlackPawn >> initialize [
	super initialize.
	color := Color black.
]

{ #category : 'rendering' }
MyBlackPawn >> targetSquaresLegal: aBoolean [
	^ { square down }  select: [ :s |
		  s notNil and: [
			  s hasPiece not ] ]
]
