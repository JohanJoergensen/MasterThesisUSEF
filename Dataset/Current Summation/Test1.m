% Load of the Datasets--------------------------
fileID = fopen('MeterID14.txt');
A = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP14date = A{1};
MP14time = A{2};
MP14energyConsumption = A{3};
% ----------------------------------------------
fileID = fopen('MeterID24.txt');
B = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP24date = B{1};
MP24time = B{2};
MP24energyConsumption = B{3};
% ----------------------------------------------
fileID = fopen('MeterID44.txt');
C = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP44date = C{1};
MP44time = C{2};
MP44energyConsumption = C{3};
% ----------------------------------------------
fileID = fopen('MeterID154.txt');
D = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP154date = D{1};
MP154time = D{2};
MP154energyConsumption = D{3};
% ----------------------------------------------
fileID = fopen('MeterID224.txt');
E = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP224date = E{1};
MP224time = E{2};
MP224energyConsumption = E{3};
% ----------------------------------------------
fileID = fopen('MeterID34+.txt');
F = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP34date = F{1};
MP34time = F{2};
MP34energyConsumption = F{3};
% ----------------------------------------------
fileID = fopen('MeterID64+.txt');
G = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP64date = G{1};
MP64time = G{2};
MP64energyConsumption = G{3};
% ----------------------------------------------
fileID = fopen('MeterID84+.txt');
H = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP84date = H{1};
MP84time = H{2};
MP84energyConsumption = H{3};
% ----------------------------------------------
fileID = fopen('MeterID114+.txt');
I = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP114date = I{1};
MP114time = I{2};
MP114energyConsumption = I{3};
% ----------------------------------------------
fileID = fopen('MeterID164+.txt');
J = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP164date = J{1};
MP164time = J{2};
MP164energyConsumption = J{3};
% ----------------------------------------------
fileID = fopen('MeterID204+.txt');
K = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP204date = K{1};
MP204time = K{2};
MP204energyConsumption = K{3};
% ----------------------------------------------
fileID = fopen('MeterID214+.txt');
L = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP214date = L{1};
MP214time = L{2};
MP214energyConsumption = L{3};
% ----------------------------------------------
fileID = fopen('MeterID54-.txt');
M = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP54date = M{1};
MP54time = M{2};
MP54energyConsumption = M{3};
% ----------------------------------------------
fileID = fopen('MeterID74-.txt');
N = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP74date = N{1};
MP74time = N{2};
MP74energyConsumption = N{3};
% ----------------------------------------------
fileID = fopen('MeterID104-.txt');
O = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP104date = O{1};
MP104time = O{2};
MP104energyConsumption = O{3};
% ----------------------------------------------
fileID = fopen('MeterID124-.txt');
P = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP124date = P{1};
MP124time = P{2};
MP124energyConsumption = P{3};
% ----------------------------------------------
fileID = fopen('MeterID194-.txt');
Q = textscan(fileID,'%s %s %d64 %d', 'delimiter',',');
fclose(fileID);
MP194date = Q{1};
MP194time = Q{2};
MP194energyConsumption = Q{3};
% ----------------------------------------------
fileID = fopen('Experiment.txt');
R = textscan(fileID,'%s', 'delimiter',',');
fclose(fileID);
guidetimes = R{1};
% ----------------------------------------------
% ----------------------------------------------

HI1DayConsumption(1) = MP14energyConsumption(17278);
for k=1:96
    HI01Day2Consumption(k) = MP14energyConsumption(20158+k*30) - MP14energyConsumption(20158+(k-1)*30);
    HI02Day2Consumption(k) = MP24energyConsumption(19930+k*30) - MP24energyConsumption(19930+(k-1)*30);
    HI03Day2Consumption(k) = MP34energyConsumption(15888+k*30) - MP34energyConsumption(15888+(k-1)*30);
    HI04Day2Consumption(k) = MP44energyConsumption(20082+k*30) - MP44energyConsumption(20082+(k-1)*30);
	HI06Day2Consumption(k) = MP64energyConsumption(15929+k*30) - MP64energyConsumption(15929+(k-1)*30);
    HI08Day2Consumption(k) = MP84energyConsumption(15852+k*30) - MP84energyConsumption(15852+(k-1)*30);
    HI11Day2Consumption(k) = MP114energyConsumption(15928+k*30) - MP114energyConsumption(15928+(k-1)*30);
    HI15Day2Consumption(k) = MP154energyConsumption(20115+k*30) - MP154energyConsumption(20115+(k-1)*30);
	HI16Day2Consumption(k) = MP164energyConsumption(15962+k*30) - MP164energyConsumption(15962+(k-1)*30);
    HI20Day2Consumption(k) = MP204energyConsumption(16008+k*30) - MP204energyConsumption(16008+(k-1)*30);
    HI21Day2Consumption(k) = MP214energyConsumption(15888+k*30) - MP214energyConsumption(15888+(k-1)*30);
    HI22Day2Consumption(k) = MP224energyConsumption(20158+k*30) - MP224energyConsumption(20158+(k-1)*30);
	HI05Day2Consumption(k) = MP54energyConsumption(9479+k*45) - MP54energyConsumption(9479+(k-1)*45);
	HI07Day2Consumption(k) = MP74energyConsumption(18058+k*30) - MP74energyConsumption(18058+(k-1)*30);
    HI10Day2Consumption(k) = MP104energyConsumption(24031+k*30) - MP104energyConsumption(24031+(k-1)*30);
end

Agg02EnergyConsumptionDay2 = HI02Day1Consumption + HI02Day2Consumption;
Agg05EnergyConsumptionDay2 = Agg02EnergyConsumptionDay2 + HI03Day2Consumption + HI04Day2Consumption + HI06Day2Consumption;
Agg10EnergyConsumptionDay2 = Agg05EnergyConsumptionDay2 + HI08Day2Consumption + HI11Day2Consumption + HI15Day2Consumption + HI16Day2Consumption + HI20Day2Consumption;
Agg15EnergyConsumptionDay2 = Agg10EnergyConsumptionDay2 + HI21Day2Consumption + HI22Day2Consumption + HI05Day2Consumption + HI07Day2Consumption + HI10Day2Consumption;


bias1=(mean(HI01Day2Consumption)-mean(HI01Day1Consumption))/mean(HI01Day2Consumption)*100;
bias2=(mean(HI02Day2Consumption)-mean(HI02Day1Consumption))/mean(HI02Day2Consumption)*100;
bias3=(mean(Agg05EnergyConsumptionDay2)-mean(Agg05EnergyConsumptionDay1))/mean(Agg05EnergyConsumptionDay2)*100;
bias4=(mean(Agg10EnergyConsumptionDay2)-mean(Agg10EnergyConsumptionDay1))/mean(Agg10EnergyConsumptionDay2)*100;
bias5=(mean(Agg15EnergyConsumptionDay2)-mean(Agg10EnergyConsumptionDay1))/mean(Agg10EnergyConsumptionDay2)*100;

EstE1 = immse(double(HI01Day2Consumption),double(HI01Day1Consumption));
EstE2 = immse(double(HI02Day2Consumption),double(HI02Day1Consumption));
EstE3 = immse(double(Agg05EnergyConsumptionDay2),double(Agg05EnergyConsumptionDay1));
EstE4 = immse(double(Agg10EnergyConsumptionDay2),double(Agg10EnergyConsumptionDay1));
EstE5 = immse(double(Agg15EnergyConsumptionDay2),double(Agg15EnergyConsumptionDay1));



% for k=2:85379
%     aa(k)=MP24energyConsumption(k)-MP24energyConsumption(k-1);
% end
% 
% aaa=aa';




% figure(1)
% plot(MP14energyConsumption)
% 
% figure(2)
% plot(HI01DayConsumption)
% figure(3)
% plot(Agg05EnergyConsumption)
% figure(4)
% plot(Agg10EnergyConsumption)
% figure(5)
% plot(Agg15EnergyConsumption)

% figure(1)
% plot(HI1DayConsumption)
% figure(2)
% plot(HI2DayConsumption)
% figure(3)
% plot(HI3DayConsumption)
% figure(4)
% plot(HI4DayConsumption)
% figure(5)
% plot(HI6DayConsumption)
% figure(6)
% plot(HI8DayConsumption)
% figure(7)
% plot(HI11DayConsumption)
% figure(8)
% plot(HI15DayConsumption)
% figure(9)
% plot(HI16DayConsumption)
% figure(10)
% plot(HI20DayConsumption)
% figure(11)
% plot(HI21DayConsumption)
% figure(12)
% plot(HI22DayConsumption)
% figure(13)
% plot(HI1DayConsumption+HI2DayConsumption+HI3DayConsumption+HI4DayConsumption+HI6DayConsumption++HI8DayConsumption+HI22DayConsumption)