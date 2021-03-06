//
//  Lift.swift
//  Basis
//
//  Created by Robert Widmann on 9/13/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

import Foundation

public prefix func ^<A, B>(f : A -> B) -> Function<A, B> {
	return Function.arr(f)
}

public prefix func ^<A, B, C>(f : A -> B -> C) -> Function<A, Function<B, C>> {
	return Function.arr({ (let x) in
		return Function<B, C>.arr({ (let y) in
			return f(x)(y)
		})
	})
}

public prefix func ^<A, B, C, D>(f : A -> B -> C -> D) -> Function<A, Function<B, Function<C, D>>> {
	return Function.arr({ (let w) in
		return Function.arr({ (let x) in
			return Function<C, D>.arr({ (let y) in
				return f(w)(x)(y)
			})
		})
	})
}

public prefix func ^<A, B, C, D, E>(f : A -> B -> C -> D -> E) -> Function<A, Function<B, Function<C, Function<D, E>>>> {
	return Function.arr({ (let w) in
		return Function.arr({ (let x) in
			return Function.arr({ (let y) in
				return Function<D, E>.arr({ (let z) in
					return f(w)(x)(y)(z)
				})
			})
		})
	})
}

public prefix func ^<A, B, C, D, E, F>(f : A -> B -> C -> D -> E -> F) -> Function<A, Function<B, Function<C, Function<D, Function<E, F>>>>> {
	return Function.arr({ (let w) in
		return Function.arr({ (let x) in
			return Function.arr({ (let y) in
				return Function.arr({ (let z) in
					return Function<E, F>.arr({ (let a) in
						return f(w)(x)(y)(z)(a)
					})
				})
			})
		})
	})
}

public prefix func ^<A, B, C, D, E, F, G>(f : A -> B -> C -> D -> E -> F -> G) -> Function<A, Function<B, Function<C, Function<D, Function<E, Function<F, G>>>>>> {
	return Function.arr({ (let w) in
		return Function.arr({ (let x) in
			return Function.arr({ (let y) in
				return Function.arr({ (let z) in
					return Function.arr({ (let a) in
						return Function<F, G>.arr({ (let b) in
							return f(w)(x)(y)(z)(a)(b)
						})
					})
				})
			})
		})
	})
}

public prefix func ^<A, B, C, D, E, F, G, H>(f : A -> B -> C -> D -> E -> F -> G -> H) -> Function<A, Function<B, Function<C, Function<D, Function<E, Function<F, Function<G, H>>>>>>> {
	return Function.arr({ (let w) in
		return Function.arr({ (let x) in
			return Function.arr({ (let y) in
				return Function.arr({ (let z) in
					return Function.arr({ (let a) in
						return Function.arr({ (let b) in
							return Function<G, H>.arr({ (let c) in
								return f(w)(x)(y)(z)(a)(b)(c)
							})
						})
					})
				})
			})
		})
	})
}

public prefix func ^<A, B, C, D, E, F, G, H, I>(f : A -> B -> C -> D -> E -> F -> G -> H -> I) -> Function<A, Function<B, Function<C, Function<D, Function<E, Function<F, Function<G, Function<H, I>>>>>>>> {
	return Function.arr({ (let w) in
		return Function.arr({ (let x) in
			return Function.arr({ (let y) in
				return Function.arr({ (let z) in
					return Function.arr({ (let a) in
						return Function.arr({ (let b) in
							return Function.arr({ (let c) in
								return Function<H, I>.arr({ (let d) in
									return f(w)(x)(y)(z)(a)(b)(c)(d)
								})
							})
						})
					})
				})
			})
		})
	})
}

public prefix func ^<A, B, C, D, E, F, G, H, I, J>(f : A -> B -> C -> D -> E -> F -> G -> H -> I -> J) -> Function<A, Function<B, Function<C, Function<D, Function<E, Function<F, Function<G, Function<H, Function<I, J>>>>>>>>> {
	return Function.arr({ (let w) in
		return Function.arr({ (let x) in
			return Function.arr({ (let y) in
				return Function.arr({ (let z) in
					return Function.arr({ (let a) in
						return Function.arr({ (let b) in
							return Function.arr({ (let c) in
								return Function.arr({ (let d) in
									return Function<I, J>.arr({ (let e) in
										return f(w)(x)(y)(z)(a)(b)(c)(d)(e)
									})
								})
							})
						})
					})
				})
			})
		})
	})
}


