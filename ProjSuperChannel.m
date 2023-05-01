%Author: Marco Túlio Quintino, https://github.com/mtcq, mtcq.mm@gmail.com
%Requires: QETLAB, MTQ TR, MTQ higher order functions
%Last update: 01/05/2023


function C=ProjSuperChannel(X, DIM)
%Function that projects a matrix into the linear space spanned by Choioperators of Superchannels

%Input: X, input matrix X\in L(H_P ⊗ H_in ⊗ H_out ⊗ H_F)
%Input: DIM, vector with all the local dimensions oredered as [past input output future]

%Output: C, matrix X after being projected onto the linear space spanned by Choi operators of SuperChannels

C=X-TR(X,4,DIM)+TR(X,[3,4],DIM)-TR(X,[2,3,4],DIM)+TR(X,[1,2,3,4],DIM);

end
