//
//  Operators.swift
//  Basis
//
//  Created by Robert Widmann on 9/7/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

import Foundation

/// MARK: Data.Functions

/// Function Composition | Composes the target of the left function with the source of the second
/// function to pipe the results through one larger function from left source to right target.
///
/// g • f x = g(f(x))
infix operator • {
	precedence 9
	associativity right
}

/// Pipe Backward | Applies the function to its left to an argument on its right.
///
/// Chains of regular function applications are often made unnecessarily verbose and tedius by
/// large amounts of parenthesis.  Because this operator has a low precedence and is right-
/// associative, it can often be used to elide parenthesis such that the following holds:
///
///		f <| g <| h x  =  f (g (h x))
///
/// Haskellers will know this as the ($) combinator.
infix operator <| {
	precedence 0
	associativity right
}

/// Pair Formation | Forms a pair from two arguments.  (⌥ + ⇧ + P)
infix operator ∏ {}

/// Pipe Forward | Applies the argument on its left to a function on its right.
///
/// Sometimes, a computation looks more natural when data is computer first on the right side of
/// an expression and applied to a function on the left.
infix operator |> {
	precedence 0
	associativity left
}

/// On | Given a "combining" function and a function that converts arguments to the target of the
/// combiner, returns a function that applies the right hand side to two arguments, then runs both
/// results through the combiner.
infix operator |*| {
	precedence 0
	associativity left
}

/// "As Type Of" | A type-restricted version of const.  In cases of typing ambiguity, using this 
/// function forces its first argument to resolve to the type of the second argument.  
///
/// Composed because it is the face one makes when having to tell the typechecker how to do its job.
infix operator >=< {
	precedence 0
	associativity left
}

/// MARK: Control.Category

/// Right-to-Left Composition | Composes two categories to form a new category with the source of
/// the second category and the target of the first category.
///
/// This function is literally `•`, but for Categories.
infix operator <<< {
	precedence 1
	associativity right
}

/// Left-to-Right Composition | Composes two categories to form a new category with the source of
/// the first category and the target of the second category.
///
/// Function composition with the arguments flipped.
infix operator >>> {
	precedence 1
	associativity right
}

/// MARK: Data.Functor

/// "Replace" | Maps all the values "inside" one functor to a user-specified constant.
infix operator <% {
	precedence 4
	associativity left
}

/// Fmap | Like fmap, but infix for your convenience.
infix operator <%> {
	precedence 4
	associativity left
}


/// MARK: Control.Applicative

/// Ap | Promotes function application.
infix operator <*> {
	precedence 4
	associativity left
}


/// Sequence Right | Disregards the Functor on the Left.
///
/// Default definition: 
///		`const(id) <%> a <*> b`
infix operator *> {
	precedence 4
	associativity left
}

/// Sequence Left | Disregards the Functor on the Right.
///
/// Default definition: 
///		`const <%> a <*> b`
infix operator <* {
	precedence 4
	associativity left
}

/// Choose | Makes Applicative a monoid.
infix operator <|> {
	precedence 3
	associativity left
}

/// MARK: Control.Monad

infix operator >>- {
	precedence 1
	associativity left
}

/// MARK: System.IO

/// Extract | Extracts a value from a monadic computation.
infix operator <- {}

/// MARK: Control.Arrow

/// Split | Splits two computations and combines the result into one Arrow yielding a tuple of
/// the result of each side.
infix operator *** {
	precedence 3
	associativity right
}

/// Fanout | Given two functions with the same source but different targets, this function
/// splits the computation and combines the result of each Arrow into a tuple of the result of
/// each side.
infix operator &&& {
	precedence 3
	associativity right
}

/// MARK: Control.Arrow.Choice

/// Splat | Splits two computations and combines the results into Eithers on the left and right.
infix operator +++ {
	precedence 2
	associativity right
}

/// Fanin | Given two functions with the same target but different sources, this function splits
/// the input between the two and merges the output.
infix operator ||| {
	precedence 2
	associativity right
}

/// MARK: Control.Arrow.Plus

/// Op | Combines two ArrowZero monoids.
infix operator <+> {
	precedence 5
	associativity right
}

prefix operator ^ {}
postfix operator ^ {}
