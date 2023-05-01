%Author: Marco Túlio Quintino, https://github.com/mtcq, mtcq.mm@gmail.com
%Requires: QETLAB, MTQ useful functions, MTQ higher order functions
%Last update: 26/03/2024

function C=ProjSeqProcess(X, DIM, order)
%Function that projects a matrix into the linear space spanned by Choi operators of sequential processes (sequential tester with a single element)

%Input: X, input matrix X\in L(H_in_1 ⊗ H_out_1 ⊗ H_in_2 ⊗ H_out_2 ⊗ ...)
%Input: DIM, vector with all the local dimensions oredered as [input1 output1 input2 output2 ...]
%Input (optional): order, vector with the order of parties, e.g., if order=[2 1], part 2 goes before 1, if [2 1 3] we have 2, then 1 then 3.
% (if no order is given, the order [1 2 ... k] is assumed

%Output: C, matrix X after being projected onto the linear space spanned by Choi operators of sequential quantum processes

%We simply use the fact that one space is the dual affine of the other
if exist('order')
    %Order specified by the user
    C = X - ProjSeqChannel(X,DIM,order) + trace(X)*eye(size(X,1))/trace(prod(DIM));
else
    %We assume the order [1 2 3.. k]
    C = X - ProjSeqChannel(X,DIM) + trace(X)*eye(size(X,1))/trace(prod(DIM));
end
