for k=1:2880
    Agg5HHDay1(k) = Agg5HHFull(k);
    Agg5HHDay2(k) = Agg5HHFull(k+2880);
    Agg5HHDay3(k) = Agg5HHFull(k+5760);
    Agg5HHDay4(k) = Agg5HHFull(k+8640);
    Agg5HHDay5(k) = Agg5HHFull(k+11520);
    Agg5HHDay6(k) = Agg5HHFull(k+14400);
    Agg5HHDay7(k) = Agg5HHFull(k+17279);
    Agg10HHDay1(k) = Agg10HHFull(k);
    Agg10HHDay2(k) = Agg10HHFull(k+2880);
    Agg10HHDay3(k) = Agg10HHFull(k+5760);
    Agg10HHDay4(k) = Agg10HHFull(k+8640);
    Agg10HHDay5(k) = Agg10HHFull(k+11520);
    Agg10HHDay6(k) = Agg10HHFull(k+14400);
    Agg10HHDay7(k) = Agg10HHFull(k+17279);
end

for k=1:2880    
    Agg5Mean3days(k) = (Agg5HHDay1(k)+Agg5HHDay2(k)+Agg5HHDay3(k))/3;
    Agg10Mean3days(k) = (Agg10HHDay1(k)+Agg10HHDay2(k)+Agg10HHDay3(k))/3;
end

for k=1:2878 
    Agg1Mean3days(k)= (DSEnergyMP15Day1(k)+DSEnergyMP15Day2(k)+DSEnergyMP15Day3(k))/3;
end
Agg1Mean3days(2879) = (DSEnergyMP15Day2(2879)+DSEnergyMP15Day3(2879)/2);
Agg1Mean3days(2880) = (DSEnergyMP15Day2(2880)+DSEnergyMP15Day3(2880)/2);

for k=1:2792
    Agg1SolarMean3days(k) = (DSEnergyMP25Day1(k)+DSEnergyMP25Day2(k)+DSEnergyMP25Day3(k))/3;
end
for k=1:69
    Agg1SolarMean3days(2792+k) = (DSEnergyMP25Day2(2792+k) + DSEnergyMP25Day3(2792+k)/2);
end
for k=1:9
    Agg1SolarMean3days(2861+k) = DSEnergyMP25Day3(2861+k);
end
for k=1:3
    Agg1SolarMean3days(2870+k) = DSEnergyMP25Day4(2870+k);
end

for k=1:69
    DSEnergyMP25Day1(k+2792)= DSEnergyMP25Day3(k+2792);
end

AEstE01HHPreDay = immse(double(DSEnergyMP15Day3),double(DSEnergyMP15Day2));
AEstE02HHSolarPreDay = immse(double(DSEnergyMP25Day2),double(DSEnergyMP25Day1));
AEstE03Agg5HHPreDay = immse(double(Agg5HHDay2),double(Agg5HHDay1));
AEstE04Agg10HHPreDay = immse(double(Agg10HHDay2),double(Agg10HHDay1));

AEstE05HHAvgDay = immse(double(DSEnergyMP15Day4),double(Agg1Mean3days));
AEstE06HHSolarAvgDay = immse(double(DSEnergyMP25Day4),double(Agg1SolarMean3days));
AEstE07Agg5AvgDay = immse(double(Agg5HHDay4),double(Agg5Mean3days));
AEstE08Agg10AvgDay = immse(double(Agg10HHDay4),double(Agg10Mean3days));

for k=1:12
    DSEnergyMP25Day1(k+2861)= DSEnergyMP25Day5(k+2861);
end

AEstE09HHProxDay = immse(double(DSEnergyMP15Day5),double(DSEnergyMP15Day2));
AEstE10HHSolarProxDay = immse(double(DSEnergyMP25Day4),double(DSEnergyMP25Day1));
AEstE11Agg5HHProxDay = immse(double(Agg5HHDay4),double(Agg5HHDay1));
AEstE12Agg10HHProxDay  =immse(double(Agg10HHDay4),double(Agg5HHDay1));




ABias01HHPreDay = (mean(DSEnergyMP15Day3)-mean(DSEnergyMP15Day2))/mean(DSEnergyMP15Day3)*100;
ABias02HHSolarPreDay = (mean(DSEnergyMP25Day2)-mean(DSEnergyMP25Day1))/mean(DSEnergyMP25Day2)*100;
ABias03Agg5HHPreDay = (mean(Agg5HHDay2)-mean(Agg5HHDay1))/mean(Agg5HHDay2)*100;
ABias04Agg10HHPreDay = (mean(Agg10HHDay2)-mean(Agg10HHDay1))/mean(Agg10HHDay2)*100;

ABias05HHAvgDay = (mean(DSEnergyMP15Day4)-mean(Agg1Mean3days))/mean(DSEnergyMP15Day4)*100;
ABias06HHSolarAvgDay = (mean(DSEnergyMP25Day4)-mean(Agg1SolarMean3days))/mean(DSEnergyMP25Day4)*100;
ABias07Agg5AvgDay = (mean(Agg5HHDay4)-mean(Agg5Mean3days))/mean(Agg5HHDay4)*100;
ABias08Agg10AvgDay = (mean(Agg10HHDay5)-mean(Agg10Mean3days))/mean(Agg10HHDay5)*100;

ABias09HHProxDay = (mean(DSEnergyMP15Day5)-mean(DSEnergyMP15Day2))/mean(DSEnergyMP15Day5)*100;
ABias10HHSolarProxDay = (mean(DSEnergyMP25Day4)-mean(DSEnergyMP25Day1))/mean(DSEnergyMP25Day4)*100;
ABias11Agg5HHProxDay = (mean(Agg5HHDay4)-mean(Agg5HHDay1))/mean(Agg5HHDay4)*100;
ABias12Agg10HHProxDay  = (mean(Agg10HHDay5)-mean(Agg10HHDay1))/mean(Agg10HHDay5)*100;


Agg10HHDay1Smooth = sum(reshape(Agg10HHDay1,30,96));
Agg10HHDay2Smooth = sum(reshape(Agg10HHDay2,30,96));
Agg10HHDay3Smooth = sum(reshape(Agg10HHDay3,30,96));
