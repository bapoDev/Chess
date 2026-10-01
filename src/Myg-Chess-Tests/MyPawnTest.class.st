Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testPawnBlockedMovement [

	| board pawn squares |

	board := MyChessBoard empty.
	board at: 'e4' put: (pawn := MyPawn white).
	board at: 'e5' put: (pawn := MyPawn black).
	
	squares := pawn targetSquares.	
	self
		assert: squares isEmpty
]
