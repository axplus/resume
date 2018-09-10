chapters=$(wildcard src/*.md)



all: README.md dist/resume.docx
clean:
install:



dist/resume.docx: README.md
	mkdir -p $(dir $@)
	pandoc -t docx -f markdown -o $@ $<

README.md: $(chapters)
	PYTHONPATH=mybook python -mmybook merge -o$@ $(dir $<)


split: README.md
	$(RM) src/*.md
	PYTHONPATH=mybook python -mmybook split -Osrc $<




