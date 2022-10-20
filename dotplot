breaks = c(-4, 0, 4)
xx = ggplot(tabla, aes(x = cel, y = MOTIF)) + 
  geom_point(aes(size = X.log10.Pvalue., fill = LFCRNA), shape = 21) +
  scale_fill_gradient2(low="#ec6568", mid = "white", high="#49b5cd", na.value='white')

 pdf("cicles.pdf")
ggplot(tabla, aes(x = cel, y = MOTIF)) + 
   geom_point(aes(size = X.log10.Pvalue., fill = LFCRNA), shape = 21) +
   scale_fill_gradient2(low="#ec6568", mid = "white", high="#49b5cd", na.value='white')
 dev.off()
