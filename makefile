all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game - The Unix Workbench - Coursera Project Week 4" > README.md
	
	echo "" >> README.md
	echo "Make was run at the following date and time: " >> README.md
	echo "$$(date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S")" >> README.md	
	
	echo "" >> README.md
	echo "guessinggame.sh contains the following number of lines: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
