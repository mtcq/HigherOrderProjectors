%Author: Marco Túlio Quintino, https://github.com/mtcq, mtcq.mm@gmail.com
%Requires: QETLAB, MTQ useful functions, MTQ higher order functions
%Last update: 26/03/2024

function C=ProjGenSuperChannel(X, DIM)
%Function that projects a matrix into the linear space spanned by Choi operators of general superchannels

%Input: X, input matrix X\in L(H_P ⊗ H_in_1 ⊗ H_out_1 ⊗ H_in_2 ⊗ H_out_2 ⊗ ... ⊗ H_F)
%Input: DIM, vector with all the local dimensions oredered as [past input1 output1 input2 output2 ... future]

%Output: C, matrix X after being projected onto the linear space spanned by Choi operators of sequential quantum channels

DIM=[1 DIM 1];
C = ProjGenProcess(X,DIM);
end
