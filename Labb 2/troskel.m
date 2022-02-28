function out=troskel(in,tr)

% ***************************************************
% out=troskel(in,tr)
%
% "in" �r originalbilden.
% "out" �r den rastrerade bilden.
% "tr" �r tr�skelmatrisen.
% "troskel" tr�skelrastrerar originalbilden med 
% tr�skelmatrisen "tr".
% ***************************************************

[rin,cin]=size(in);
[rtr,ctr]=size(tr);

M=ceil(rin/rtr);
N=ceil(cin/ctr);
TR=repmat(tr,M,N);
TR=TR(1:rin,1:cin);  
  out= in >= TR;