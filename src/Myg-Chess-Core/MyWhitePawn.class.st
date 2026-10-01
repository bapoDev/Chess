Class {
	#name : 'MyWhitePawn',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'initialization' }
MyWhitePawn >> initialize [ 
	super initialize.
	color := Color white.
]

{ #category : 'rendering' }
MyWhitePawn >> targetSquaresLegal: aBoolean [
	^ { square up }  select: [ :s |
		  s notNil and: [
			  s hasPiece not ] ]
]
