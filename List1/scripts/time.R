
p <- head(mpk$timestamp)
f <- format(p, "%H")
h <- as.numeric(f)

ps <- mpk$timestamp
fs <- format(ps, "%H")
hs <- as.numeric(fs)

res_h <- aggregate(mpk$timestamp, list(hs), length)
plot(res_h, type = 'b')
plot(res_h, type = 'h')