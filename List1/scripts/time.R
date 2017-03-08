res_h <- aggregate(mpk$timestamp, as.numeric(format(mpk$timestamp, "%H")), sum)
