SRC=cv-meven_courouble.tex
OUT=$(SRC:.tex=.pdf)

all: pdf view

pdf: $(OUT)

$(OUT): $(SRC)
	xelatex $^

view: $(OUT)
	zathura --fork $^

clean:
	$(RM) *.{aux,log,nav,toc,snm,pdf,out}
