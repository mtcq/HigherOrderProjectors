%Author: Marco Túlio Quintino, https://github.com/mtcq, mtcq.mm@gmail.com
%Requires: QETLAB, MTQ TR, MTQ higher order functions
%Last update: 01/05/2023

function C=ProjParSuperChannel(X, DIM)
%Function that projects a matrix into the linear space spanned by Choi operators of parallel superchannels

%Input: X, input matrix X\in L(H_P ⊗ H_in_1 ⊗ H_out_1 ⊗ H_in_2 ⊗ H_out_2 ⊗ ... ⊗ H_F)
%Input: DIM, vector with all the local dimensions oredered as [past input1 output1 input2 output2 ... future]

%Output: C, matrix X after being projected onto the linear space spanned by Choi operators of parallel quantum channels

%DIM=[1 DIM 1]
%C = ProjParProcess(X,DIM);
k=max(size(DIM)-2)/2;
aux=[];
for i=1:k
    aux=[aux, 2*i+1];
end
pF=length(DIM);
    C=X-TR(X,pF,DIM)+TR(X,[aux pF],DIM) - kron(PartialTrace(X,[2:pF],DIM),eye(prod(DIM(2:pF)))/prod(DIM(2:pF))) + trace(X)*eye(prod(DIM))/trace(prod(DIM));
   % Single slot superchannel: C=X-TR(X,4,DIM)+TR(X,[3,4],DIM)-TR(X,[2,3,4],DIM)+TR(X,[1,2,3,4],DIM);
end

