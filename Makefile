
all: testing-pleiotropy.pdf

testing-pleiotropy.html: testing-pleiotropy.Rmd R/hs_fig.R 
	R -e "rmarkdown::render('testing-pleiotropy.Rmd')"

testing-pleiotropy.pdf: testing-pleiotropy.html
	R -e "file <- paste0('file://', normalizePath('testing-pleiotropy.html'));webshot::webshot(file, '$@')"

