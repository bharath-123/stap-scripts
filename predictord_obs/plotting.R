test1 <- read.csv("test1_Normal")

plot(test1$X91053030 )

test2 <- read.csv("test2_normal")
index <- seq(1,nrow(test2))

colnames(test2) <- c("Total Memory", "Order1","Order2","Order3","Order4","Order5","Order6","Order7","Order8","Order9","Order10")

jpeg("free_mem_order1.jpg")
plot(test2$`Total Memory` ~ index, main = "Lines of total free mem and order 1 fragmented_mem(Normal)")

abline(lm(test2$`Total Memory` ~ index))

par(new=TRUE)

plot(test2$Order1 ~ index)

abline(lm(test2$Order1 ~ index))

dev.off()