chapters=$(wildcard src/*.md)



all: README.md

README.md: $(chapters)
	python -mmybook merge -o$@ $(dir $<)


split: README.md
	python -mmybook split -Osrc $<