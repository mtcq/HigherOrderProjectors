# HigherOrderProjectors
## Code to accompany: [Transformations between arbitrary quantum objects and the emergence of indefinite causality](https://arxiv.org/abs/2305.01247)

#### Simon Milz, Marco Túlio Quintino

This is a repository for the article [Transformations between arbitrary quantum objects and the emergence of indefinite causality](https://arxiv.org/abs/2305.01247)

 This code requires:
- [QETLAB](http://www.qetlab.com/) - a free MATLAB toolbox for quantum entanglement theory.

For the code presented here, we used the following convention:
- Quantum channels are Choi operators in the space L(H_in ⊗ H_out), that is, ordered as (input, output)
- Multipartite channels are Choi operators in the space L(H_in_1 ⊗ H_out_1 ⊗ H_in_2 ⊗ H_out_2 ⊗ ...), that is, ordered as (input1, output1, input2, output2, ...)
- Multipartite processes are Choi operators in the space L(H_in_1 ⊗ H_out_1 ⊗ H_in_2 ⊗ H_out_2 ⊗ ...), that is, ordered as (input1, output1, input2, output2, ...). Processes do not have a common past nor common future, and are the dual affine of multipartite channels (hence, equivalent of a tester with a single tester element)
- A superchannel is a Choi operator in L(H_P ⊗ H_in ⊗ H_out ⊗ H_F) which transforms  the Choi operator of a Channel in L(H_in ⊗ H_out) into the Choi operator of a channel in L(H_P ⊗ H_F)
- A multipartite superchannel is a Choi operator in L(H_P ⊗ H_in_1 ⊗ H_out_1 ⊗ H_in_2 ⊗ H_out_2 ⊗ ... ⊗ H_F) which transforms  the Choi operator of a Channel in L(H_in_1 ⊗ H_out_1 ⊗ H_in_2 ⊗ H_out_2 ⊗ ...), into the Choi operator of a channel in L(H_P ⊗ H_F)

This repository contains of projectors onto the linear subspace spanned by Choi operators of:
- Quantum Channels: [ProjChannel.m](https://github.com/mtcq/HigherOrderProjectors/blob/main/ProjChannel.m)
- Quantum Unital Channels: [ProjUnitalChannel.m](https://github.com/mtcq/HigherOrderProjectors/blob/main/ProjUnitalChannel.m)
- Quantum SuperChannels: [ProjSuperChannel.m](https://github.com/mtcq/HigherOrderProjectors/blob/main/ProjSuperChannel.m)
- Quantum Parallel Channels: [ProjParChannel.m](https://github.com/mtcq/HigherOrderProjectors/blob/main/ProjParChannel.m)
- Quantum Parallel Processes: [ProjParProcess.m](https://github.com/mtcq/HigherOrderProjectors/blob/main/ProjParProcess.m)
- Quantum Parallel SuperChannels: [ProjParSuperChannel.m](https://github.com/mtcq/HigherOrderProjectors/blob/main/ProjParSuperChannel.m)
- Quantum Sequential Channels: [ProjSeqChannel.m](https://github.com/mtcq/HigherOrderProjectors/blob/main/ProjSeqChannel.m)
- Quantum Sequential Processes: [ProjSeqProcess.m](https://github.com/mtcq/HigherOrderProjectors/blob/main/ProjSeqProcess.m)
- Quantum Sequential SuperChannels: [ProjSeqSuperChannel.m](https://github.com/mtcq/HigherOrderProjectors/blob/main/ProjSeqSuperChannel.m)
- Quantum Non-Signalling Channels: [ProjNSchannel.m](https://github.com/mtcq/HigherOrderProjectors/blob/main/ProjChannel.m)
- Quantum General Processes (Process Matrices): [ProjGenProcess.m](https://github.com/mtcq/HigherOrderProjectors/blob/main/ProjChannel.m)
- Quantum General SuperChannels (Process with open Past and Future): [ProjGenSuperChannel.m](https://github.com/mtcq/HigherOrderProjectors/blob/main/ProjChannel.m)

This repository also contains a function which implements the trace-and-replace map:
- Map that partial traces a system and substitute it by the normalised identity: [TR.m](https://github.com/mtcq/HigherOrderProjectors/blob/main/TR.m)
