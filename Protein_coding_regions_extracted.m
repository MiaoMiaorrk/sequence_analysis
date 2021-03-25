%To extracted the nucleotide regions of 26 viral proteins.
close all;clear all;clc;

x=fastaread('./mafft_output.fasta');

NSP1 = x;
NSP2 = x;
NSP3 = x;
NSP4 = x;
NSP5 = x;
NSP6 = x;
NSP7 = x;
NSP8 = x;
NSP9 = x;
NSP10 = x;
NSP11 = x;
NSP12_1 = x;
NSP12_2 = x;
NSP13 = x;
NSP14 = x; 
NSP15 = x;
NSP16 = x;
S = x;
ORF3a = x;
E = x;
M = x;
ORF6 = x;
ORF7a = x;
ORF7b = x;
ORF8 = x;
N = x;
ORF10 = x;

for i=1:1:size(x)
    if mod(i,10000)==0
        disp(i);
    end
    NSP1(i).Sequence = x(i).Sequence(266:805);
    NSP2(i).Sequence = x(i).Sequence(806:2719);
    NSP3(i).Sequence = x(i).Sequence(2720:8554);
    NSP4(i).Sequence = x(i).Sequence(8555:10054);
    NSP5(i).Sequence = x(i).Sequence(10055:10972);
    NSP6(i).Sequence = x(i).Sequence(10973:11842);
    NSP7(i).Sequence = x(i).Sequence(11843:12091);
    NSP8(i).Sequence = x(i).Sequence(12092:12685);
    NSP9(i).Sequence = x(i).Sequence(12686:13024);
    NSP10(i).Sequence = x(i).Sequence(13025:13441);
    NSP11(i).Sequence = x(i).Sequence(13442:13480);
    NSP12_1(i).Sequence = x(i).Sequence(13442:13468);
    NSP12_2(i).Sequence = x(i).Sequence(13468:16236);
    NSP13(i).Sequence = x(i).Sequence(16237:18039);
    NSP14(i).Sequence = x(i).Sequence(18040:19620);
    NSP15(i).Sequence = x(i).Sequence(19621:20658);
    NSP16(i).Sequence = x(i).Sequence(20659:21552);
    S(i).Sequence = x(i).Sequence(21563:25384);
    ORF3a(i).Sequence = x(i).Sequence(25393:26220);
    E(i).Sequence = x(i).Sequence(26245:26472);
    M(i).Sequence = x(i).Sequence(26523:27191);
    ORF6(i).Sequence = x(i).Sequence(27202:27387);
    ORF7a(i).Sequence = x(i).Sequence(27394:27759);
    ORF7b(i).Sequence = x(i).Sequence(27756:27887);
    ORF8(i).Sequence = x(i).Sequence(27894:28259);
    N(i).Sequence = x(i).Sequence(28274:29533);
    ORF10(i).Sequence = x(i).Sequence(29558:29674);
end

%NSP12
NSP12 = NSP12_1;
lenth_1 = size(NSP12_1(1).Sequence,2);
lenth_2 = size(NSP12_2(1).Sequence,2);
for i=1:1:size(NSP12_1)
    NSP12(i).Sequence(lenth_1+1:lenth_1+lenth_2)=...
        NSP12_2(i).Sequence(1:lenth_2);
end

%write extracted results
fastawrite('./split/NSP1.fasta',NSP1);
fastawrite('./split/NSP2.fasta',NSP2);
fastawrite('./split/NSP3.fasta',NSP3);
fastawrite('./split/NSP4.fasta',NSP4);
fastawrite('./split/NSP5.fasta',NSP5);
fastawrite('./split/NSP6.fasta',NSP6);
fastawrite('./split/NSP7.fasta',NSP7);
fastawrite('./split/NSP8.fasta',NSP8);
fastawrite('./split/NSP9.fasta',NSP9);
fastawrite('./split/NSP10.fasta',NSP10);
fastawrite('./split/NSP11.fasta',NSP11);
fastawrite('./split/NSP12.fasta',NSP12);
fastawrite('./split/NSP13.fasta',NSP13);
fastawrite('./split/NSP14.fasta',NSP14);
fastawrite('./split/NSP15.fasta',NSP15);
fastawrite('./split/NSP16.fasta',NSP16);
fastawrite('./split/S.fasta',S);
fastawrite('./split/ORF3a.fasta',ORF3a);
fastawrite('./split/E.fasta',E);
fastawrite('./split/M.fasta',M);
fastawrite('./split/ORF6.fasta',ORF6);
fastawrite('./split/ORF7a.fasta',ORF7a);
fastawrite('./split/ORF7b.fasta',ORF7b);
fastawrite('./split/ORF8.fasta',ORF8);
fastawrite('./split/N.fasta',N);
fastawrite('./split/ORF10.fasta',ORF10);
