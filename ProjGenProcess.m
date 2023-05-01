%Author: Marco Túlio Quintino, https://github.com/mtcq, mtcq.mm@gmail.com
%Requires: QETLAB, MTQ TR, MTQ higher order functions
%Last update: 01/05/2023

function C=ProjGenProcess(X, DIM)
%Function that projects a matrix into the linear space spanned by Choi operators of general process matrices

%Input: X, input matrix X\in L(H_in_1 ⊗ H_out_1 ⊗ H_in_2 ⊗ H_out_2 ⊗ ...)
%Input: DIM, vector with all the local dimensions oredered as [input1 output1 input2 output2 ... ]

%Output: C, matrix X after being projected onto the linear space spanned by Choi operators of general Process matrices

%We simply use the fact that one space is the dual affine of the other
C = X - ProjNSchannel(X,DIM) + trace(X)*eye(size(X,1))/trace(prod(DIM));
end
