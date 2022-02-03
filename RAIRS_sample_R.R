
library(TeachingDemos)

setwd("C:/Users/renea/Desktop")

png(filename="RAIRS_sample_R.png", width = 1000, height = 700, units = "px", pointsize = 12, bg = "white", res = 100)
dataset <- read.table("RAIRS_Sample.DPT", header = FALSE, sep = ",", dec = ".")
Intensity  <- dataset[,2]+0.1 # 500 eV 300 microC cm2
Wavenumber <- dataset[,1]

graficar     <- plot(Wavenumber, Intensity, type="l", main = "IR Spectrum", sub = "",
                     xlab = expression(paste("Wavenumber","  ", , "", "", (cm^{-1}))), ylab = "", col="dark blue",  
                     lwd  = 2, ylim=c(0.70,1.3), xlim=rev(c(750, 2000)), cex.lab=1.2, mgp = c(3, 1, 0), font.main=20, yaxt='n')

axis(side=1, labels=seq(from=750, to=2000, by=50), at=seq(from=750, to=2000, by=50))
title(ylab = expression('R/R'['0']*''), line=1, cex.lab=1.2)
#ylab = expression('R/R'['0']*'')
lines(Wavenumber, Intensity, col="dark green", lwd = 2)

text(x=1100, y=1.23, label=expression(paste("500 eV, "," 30 ", mu, "C", "/", cm^{2})), cex=1.0, col="black")
#################################################text(x=1100, y=1.19, label=expression(paste("100 eV, "," 300 ", mu, "C", "/", cm^{2})), cex=1.0, col="black")

text(x=1950, y=0.84, label="4 %", cex=1.0, col="black")

#(x=1650, y=1.3, label="Spectrums of the samples", cex=1.0, col="black")


lines(c(1385,1385),c(-1,1.22), lwd=1, col="black", type="l", lty=2) # linea vertical negra para indicar picos
lines(c(1453,1453),c(-1,1.22), lwd=1, col="black", type="l", lty=2) # linea vertical negra para indicar picos
#lines(c(1580,1580),c(-1,1.22), lwd=1, col="black", type="l", lty=2) # linea vertical negra para indicar picos
#lines(c(1630,1630),c(-1,1.22), lwd=1, col="black", type="l", lty=2) # linea vertical negra para indicar picos
lines(c(1653,1653),c(-1,1.22), lwd=1, col="black", type="l", lty=2) # linea vertical negra para indicar picos
lines(c(2000,2000),c(0.82,0.86), lwd=2, col="black") # linea vertical negra para indicar porcentaje de picos

dev.off() 