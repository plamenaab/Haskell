quadratGleichung a b c
       | disk < 0  = error "imaginaere Werte"
       | disk == 0 = [-b/(2*a)]
       | disk > 0  = [-b/(2*a) + t/(2*a), -b/(2*a) - t/(2*a)]
       where
           disk = b*b - 4*a*c
           t = sqrt disk
 