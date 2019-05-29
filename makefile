Make_file.md:
	rm README.md
	touch README.md
	echo "                              *UNIX Workbench project*                        " >> README.md
	echo "The date is :   " >> README.md
	date >> README.md
	echo "" >> README.md
	echo "The number of lines in the guessing game and the file name : " >> README.md
	wc -l guessinggame.sh>> README.md
