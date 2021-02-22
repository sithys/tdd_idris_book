data MyVect : Nat -> Type -> Type where
  Nil : MyVect Z a
  (::) : (x : a) -> (xs : MyVect k a) -> MyVect (S k) a

%name MyVect xs, ys, zs

append : MyVect n elem -> MyVect m elem -> MyVect (n + m) elem
append [] ys = ys
append (x :: xs) ys = x :: append xs ys

zip : MyVect n a -> MyVect n b -> MyVect n (a, b)
zip [] ys = []
zip (x :: xs) (y :: ys) = (x, y) :: zip xs ys
