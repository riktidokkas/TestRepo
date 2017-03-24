
all: plots

plots: sp_500_returns.png sp_500_close.png

sp_500_yearend.csv: src/download.R
	Rscript src/download.R

sp_500_returns.csv: sp_500_yearend.csv src/calc_returns.R
	Rscript src/calc_returns.R

sp_500_returns.png: sp_500_returns.csv src/plot.R
	Rscript src/plot.R
	
sp_500_close.png: sp_500_yearend.csv src/plot2.R
	Rscript src/plot2.R