
function retval = fixedPointIterationMethod ()
	g = input('Enter g(x): ');
	x0 = input('Enter initial guess: ');
	e = input('Enter tolerance: ');
	n = input('Enter no of iterations: ');

	for i=1:n
		x1 = g(x0);
		fprintf('x%d = %.6f\n', i, x1);
		if abs(x1-x0) < e
			x0 = x1;
			break;
		endif
		x0 = x1;
	endfor
	retval = x0;
endfunction
