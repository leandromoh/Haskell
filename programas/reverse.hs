reverse1 xs = reverse1Aux xs []

reverse1Aux [] ys = ys
reverse1Aux (x:xs) ys = reverse1Aux xs (x:ys)