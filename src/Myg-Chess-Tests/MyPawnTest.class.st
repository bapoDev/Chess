Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testCanPawnAttackBlack [
	
	| board whitePawn blackPawn square |
	board := MyChessBoard empty.
	board at: 'e4' put: (whitePawn := MyPawn white).
	board at: 'd5' put: (blackPawn := MyPawn black).
	
	square := whitePawn targetSquares.
	self 
		assertCollection: square 
		includesAny: #d5
	
	
]

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

{ #category : 'tests' }
MyPawnTest >> testPawnLegalMoves [

	| board pawn squares |

	board := MyChessBoard empty.
	board at: 'e4' put: (pawn := MyPawn white).
	
	squares := pawn targetSquares.	
	self
		assertCollection: squares 
		includesAll: 
			(#( e5 e6 ) collect: [:name | board at: name])
]
