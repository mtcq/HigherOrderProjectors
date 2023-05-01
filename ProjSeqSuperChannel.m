%Author: Marco Túlio Quintino, https://github.com/mtcq, mtcq.mm@gmail.com
%Requires: QETLAB, MTQ TR, MTQ higher order functions
%Last update: 01/05/2023

function C=ProjSeqSuperChannel(X, DIM, order)
%Function that projects a matrix into the linear space spanned by Choi operators of sequential superchannels

%Input: X, input matrix X\in L(H_P ⊗ H_in_1 ⊗ H_out_1 ⊗ H_in_2 ⊗ H_out_2 ⊗ ... ⊗ H_F)
%Input: DIM, vector with all the local dimensions oredered as [past input1 output1 input2 output2 ... future]
%Input (optional): order, vector with the order of parties, e.g., if order=[2 1], part 2 goes before 1, if [2 1 3] we have 2, then 1 then 3.
% (if no order is given, the order [1 2 ... k] is assumed

%Output: C, matrix X after being projected onto the linear space spanned by Choi operators of sequential quantum channels

DIM=[1 DIM 1];

if exist('order')
    order=[1 order+1 max(order)+2];
    %Order specified by the user
    C = ProjSeqProcess(X,DIM,order);
else
    %We assume the order [1 2 3.. k]
    C = ProjSeqProcess(X,DIM);
end
end
