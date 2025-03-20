echo -off
for %i in fs0 fs1 fs2 fs3 fs4 fs5 fs6 fs7 fs8 fs9
	if exist %i:\%0 then 
		%i:
		cd AfuEfi
		Afu64.nsh

		cls


		reset
		goto: EOF
	else
	echo not find %i
	endif
endfor
:EOF
