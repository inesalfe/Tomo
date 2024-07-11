% SINC   Sinc function.
%    sinc(X) returns sin(pi * x) / (pi * x) for elements of X. X may be 
%    vector or matrix. sinc(0) = 1.

% Author: Gene Dial, GeoEye, 2011-07-28.

function y = sinc(x)
y = ones(size(x));
isNonZero = x~=0;
y(isNonZero) = sin(pi*x(isNonZero))./(pi*x(isNonZero));