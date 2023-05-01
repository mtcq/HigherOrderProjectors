%Author: Marco Túlio Quintino, https://github.com/mtcq, mtcq.mm@gmail.com
%Requires: QETLAB, MTQ TR, MTQ higher order functions
%Last update: 01/05/2023

function C=ProjSeqChannel(X, DIM, order)
%Function that projects a matrix into the linear space spanned by Choi operators of sequential quantum channels

%Input: X, input matrix X\in L(H_in_1 ⊗ H_out_1 ⊗ H_in_2 ⊗ H_out_2 ⊗ ...)
%Input: DIM, vector with all the local dimensions oredered as [input1 output1 input2 output2 ...]
%Input (optional): order, vector with the order of parties, e.g., if order=[2 1], part 2 goes before 1, if [2 1 3] we have 2, then 1 then 3.
% (if no order is given, the order [1 2 ... k] is assumed

%Output: matrix C inside the linear space spanned by Choi operators of sequential quantum channels

nParties=max(size(DIM))/2;
C=X;
if nargin<=2
    aux=[];
    for i=nParties:-1:1
        aux=[aux 2*i];
        C= C - TR(C,aux,DIM) + TR(C,[2*i-1 aux],DIM);
        aux=[aux 2*i-1];
    end
else
    aux=[];
    for i=nParties:-1:1
        j=order(i);
        aux=[aux 2*j];
        C= C - TR(C,aux,DIM) + TR(C,[2*j-1 aux],DIM);
        aux=[aux 2*j-1];
    end
end
end
