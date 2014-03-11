# Split-Apply-Combine 

library(datasets)
head(InsectSprays)

# Split
count_by_spray <- with(InsectSprays, split(count, spray))
# Apply
mean_by_spray <- lapply(count_by_spray, mean)
# Combine
unlist(mean_by_spray)


# Combining Apply and Combine steps
# sapply
sapply(count_by_spray, mean)
# vapply
vapply(count_by_spray, mean, numeric(1))


# one function 
# tapply
with(InsectSprays, tapply(count, spray, mean))
with(InsectSprays, by(count, spray, mean))
aggregate(count ~ spray, InsectSprays, mean)

# ddply
library(plyr)
ddply(InsectSprays, .(spray), summarise, mean.count=mean(count))
?ddply
