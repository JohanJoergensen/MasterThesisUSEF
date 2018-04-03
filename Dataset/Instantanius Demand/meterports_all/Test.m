fileID = fopen('MeterID14.txt');
A = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);

date = A{1};
time = A{2};
energyConsumption = A{3};


startEnergy = energyConsumption(1);
energyConsumption =energyConsumption - startEnergy;

day1Consumption(1)=energyConsumption(1);

for k=2:2881
    day1Consumption(k)=energyConsumption(k)-energyConsumption(k-1);
end


smoothedDy1Consumption(1)=energyConsumption(1);
smoothedDy2Consumption(1)=energyConsumption(96*30);
smoothedDy3Consumption(1)=energyConsumption(192*30);
smoothedDy4Consumption(1)=energyConsumption(288*30);
smoothedDy5Consumption(1)=energyConsumption(384*30);

for k=2:96
    smoothedDy1Consumption(k)=energyConsumption(k*30)-energyConsumption((k-1)*30);
end

for k=97:192
    smoothedDy2Consumption(k-96)=energyConsumption(k*30)-energyConsumption((k-1)*30);
end

for k=193:288
    smoothedDy3Consumption(k-192)=energyConsumption(k*30)-energyConsumption((k-1)*30);
end

for k=289:384
    smoothedDy4Consumption(k-288)=energyConsumption(k*30)-energyConsumption((k-1)*30);
end

for k=385:480
    smoothedDy5Consumption(k-384)=energyConsumption(k*30)-energyConsumption((k-1)*30);
end

summationConsumption=smoothedDy1Consumption+smoothedDy2Consumption+smoothedDy3Consumption+smoothedDy4Consumption+smoothedDy5Consumption;

figure(1)
plot(energyConsumption)


figure(2)
plot(day1Consumption)

figure(3)
plot(smoothedDy1Consumption)

figure(5)
plot(smoothedDy2Consumption)

figure(6)
plot(smoothedDy3Consumption)


figure(4)
plot(summationConsumption)