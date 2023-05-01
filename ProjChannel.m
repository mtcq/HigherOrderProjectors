%Author: Marco Túlio Quintino, https://github.com/mtcq, mtcq.mm@gmail.com
%Requires: QETLAB, MTQ TR
%Last update: 01/05/2023

function C=ProjChannel(X, DIM)
%Function that projects a matrix into the linear space spanned by Choi operators of quantum channels

%Input: X, input matrix X\in L(H_in ⊗ H_out)
%Input: DIM, vector with all the local dimensions oredered as [input output],

%Output: C, matrix X after being projected onto the linear space spanned by Choi operators of quantum channels

C = X - TR(X,2,DIM) + TR(X,[1 2],DIM);

end
