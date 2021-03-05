valToString : (isInt : Bool) -> (case isInt of
                                      False => String
                                      True => Int) -> String
valToString False x = trim x
valToString True x = cast x
