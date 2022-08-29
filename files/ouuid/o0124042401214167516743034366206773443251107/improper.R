function ( x ) {
    stopifnot ( is.double ( x ) )
    R  <- cbind ( floor ( x ) , ceiling ( x ) )
    MI <- cbind ( seq_along ( x ) , 1L + ( x < 0 ) )
    Z  <- R [ MI ]
    Y  <- cbind ( Z , x - Z ) 
    dimnames ( Y ) <- NULL 
    Y [ is.infinite ( x ) , 2 ] <- 0
    Y [ is.nan ( x ) , ] <- NaN
    Y }
