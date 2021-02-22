data Tree elem = Empty | Node (Tree elem) elem (Tree elem)
%name Tree lhs, rhs

insert : Ord elem => elem -> Tree elem -> Tree elem
insert x Empty = Node Empty x Empty
insert x orig@(Node lhs y rhs) = case compare x y of
                                 LT => Node (insert x left) y right
                                 EQ => orig
                                 GT => Node left y (insert x right)
