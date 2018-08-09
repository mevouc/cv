SRC=cv-meven_courouble.tex
OUT=$(SRC:.tex=.pdf)

all: $(OUT) view

$(OUT): $(SRC)
	xelatex $^

view: $(OUT)
	zathura --fork $^

clean:
	$(RM) {./,./parts/}*.{aux,log,nav,toc,snm,pdf,out}
