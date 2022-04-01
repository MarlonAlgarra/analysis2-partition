function [outputArg1, outputArg2]= PartitionNumber(inputArg1)
counter = 0;
iterationNumber=inputArg1;
iterationVector = zeros(1,iterationNumber+1);
iterationVector(1)=1;
for iteration=2:1:length(iterationVector)
    tempIndexList = iteration:length(iterationVector);
    for tempValue = 1:1:length(tempIndexList)
        counter = counter+1;
        iterationVector(tempIndexList(tempValue)) = iterationVector(tempIndexList(tempValue)) + ...
                                                    iterationVector(tempValue);        
    end
end
outputArg1 = iterationVector;
outputArg2 = counter;
end