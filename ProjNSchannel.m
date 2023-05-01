%Author: Marco Túlio Quintino, https://github.com/mtcq, mtcq.mm@gmail.com
%Requires: QETLAB, MTQ TR
%Last update: 01/05/2023

function C=ProjNSchannel(X, DIM)
%Function that projects a matrix into the linear space spanned by Choi operators of non-signalling quantum channels

%Input: X, input matrix X\in L(H_in_1 ⊗ H_out_1 ⊗ H_in_2 ⊗ H_out_2 ⊗ ...)
%Input: DIM, vector with all the local dimensions oredered as [input1 output1 input2 output2 ... ]

%Output: C, matrix X after being projected onto the linear space spanned by Choi operators of NS quantum channels

k=max(size(DIM))/2;
C=X;
for i=1:k
    C=C+TR(C,[2*i-1,2*i],DIM)-TR(C,[2*i],DIM);
end

end
