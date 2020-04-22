chapters=$(wildcard src/*.md)



all: README.md resume.docx resume.pdf


clean:
	$(RM) resume.docx resume.pdf


resume.pdf: ~/Documents/曾毅杰-15年工作经验-电子商务领域后台开发.pdf
	cp $< $@


resume.docx: README.md
	pandoc -t docx -f markdown -o $@ $<

# README.md: $(chapters)
# 	PYTHONPATH=mybook python -mmybook merge -o$@ $(dir $<)


# split: README.md
# 	$(RM) src/*.md
# 	PYTHONPATH=mybook python -mmybook split -Osrc $<




