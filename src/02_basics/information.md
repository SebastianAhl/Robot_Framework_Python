source https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#getting-started

# "Escaping"
## Escaping special characters
Character	Meaning	Examples
\$	Dollar sign, never starts a scalar variable.	\${notvar}
\@	At sign, never starts a list variable.	\@{notvar}
\&	Ampersand, never starts a dictionary variable.	\&{notvar}
\%	Percent sign, never starts an environment variable.	\%{notvar}
\#	Hash sign, never starts a comment.	\# not comment
\=	Equal sign, never part of named argument syntax.	not\=named
\|	Pipe character, not a separator in the pipe separated format.	ls -1 *.txt \| wc -l
\\	Backslash character, never escapes anything.	c:\\temp, \\${var}

## Escape sequences
Sequence	Meaning	Examples
\n	Newline character.	first line\n2nd line
\r	Carriage return character	text\rmore text
\t	Tab character.	text\tmore text
\xhh	Character with hex value hh.	null byte: \x00, ä: \xE4
\uhhhh	Character with hex value hhhh.	snowman: \u2603
\Uhhhhhhhh	Character with hex value hhhhhhhh.	love hotel: \U0001f3e9

## Handling empty values
If you don't want to send a value for a parameter you can "escape" this by using \ instead of a value.
