%Author: Marco Túlio Quintino, https://github.com/mtcq, mtcq.mm@gmail.com
%Requires: QETLAB, MTQ TR
%Last update: 01/05/2023

function C=ProjUnitalChannel(X, dims)
%Function that projects a matrix into the linear space spanned by Choi operators of unital quantum channels

%Input:  X, input matrix 
%Input:  DIM, vector with all the local dimensions oredered as [input output],

%Output: C, matrix X after being projected onto the linear space spanned by Choi operators of unital quantum channels

C = X - TR(X,2,dims) - TR(X,1,dims) + 2*TR(X,[1 2],dims);

end
