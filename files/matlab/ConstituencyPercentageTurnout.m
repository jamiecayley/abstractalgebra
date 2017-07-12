% This is a function to find the percentage turnout in a particular constituency, 
% the input is the row of the required constituency and the matrix of columns E to M imported 
% from the excel document
% Written by Michael Goldsmith, 2017
function output = ConstituencyPercentageTurnout(ConstituencyRowNum,ImportedMatrix)
NumOfEligibleVoters = ImportedMatrix(ConstituencyRowNum,1);
NumWhoVoted = sum(ImportedMatrix(ConstituencyRowNum,2:9));
output = (NumWhoVoted/NumOfEligibleVoters)*100;
end