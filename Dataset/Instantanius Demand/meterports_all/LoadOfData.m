fileID = fopen('meter_port15a.csv');
formatSpec = '%s';
N = 3;
A_text = textscan(fileID,formatSpec,N);
A = textscan(fileID,'%s %s %d', 'delimiter',',');
fclose(fileID);
MP15date = A{1};
MP15time = A{2};
MP15energyConsumption = A{3};
% ----------------------------------------------
fileID = fopen('meter_port25a.csv');
formatSpec = '%s';
N = 3;
B_text = textscan(fileID,formatSpec,N);
B = textscan(fileID,'%s %s %d', 'delimiter',',');
fclose(fileID);
MP25date = B{1};
MP25time = B{2};
MP25energyConsumption = B{3};
% ----------------------------------------------
fileID = fopen('meter_port35a.csv');
formatSpec = '%s';
N = 4;
C_text = textscan(fileID,formatSpec,N);
C = textscan(fileID,'%d %s %s %d', 'delimiter',',');
fclose(fileID);
MP35date = C{2};
MP35time = C{3};
MP35energyConsumption = C{4};
% ----------------------------------------------
fileID = fopen('meter_port65a.csv');
formatSpec = '%s';
N = 4;
D_text = textscan(fileID,formatSpec,N);
D = textscan(fileID,'%d %s %s %d', 'delimiter',',');
fclose(fileID);
MP65date = D{2};
MP65time = D{3};
MP65energyConsumption = D{4};
% ----------------------------------------------
fileID = fopen('meter_port85a.csv');
formatSpec = '%s';
N = 4;
E_text = textscan(fileID,formatSpec,N);
E = textscan(fileID,'%d %s %s %d', 'delimiter',',');
fclose(fileID);
MP85date = E{2};
MP85time = E{3};
MP85energyConsumption = E{4};
% ----------------------------------------------
fileID = fopen('meter_port115a.csv');
formatSpec = '%s';
N = 4;
F_text = textscan(fileID,formatSpec,N);
F = textscan(fileID,'%d%s %s %d', 'delimiter',',');
fclose(fileID);
MP115date = F{2};
MP115time = F{3};
MP115energyConsumption = F{4};
% ----------------------------------------------
fileID = fopen('meter_port155a.csv');
formatSpec = '%s';
N = 3;
G_text = textscan(fileID,formatSpec,N);
G = textscan(fileID,'%s %s %d', 'delimiter',',');
fclose(fileID);
MP155date = G{1};
MP155time = G{2};
MP155energyConsumption = G{3};
% ----------------------------------------------
fileID = fopen('meter_port165a.csv');
formatSpec = '%s';
N = 3;
H_text = textscan(fileID,formatSpec,N);
H = textscan(fileID,'%s %s %d', 'delimiter',',');
fclose(fileID);
MP165date = H{1};
MP165time = H{2};
MP165energyConsumption = H{3};
% ----------------------------------------------
fileID = fopen('meter_port205a.csv');
formatSpec = '%s';
N = 3;
I_text = textscan(fileID,formatSpec,N);
I = textscan(fileID,'%s %s %d', 'delimiter',',');
fclose(fileID);
MP205date = I{1};
MP205time = I{2};
MP205energyConsumption = I{3};
% ----------------------------------------------
fileID = fopen('meter_port215a.csv');
formatSpec = '%s';
N = 3;
J_text = textscan(fileID,formatSpec,N);
J = textscan(fileID,'%s %s %d', 'delimiter',',');
fclose(fileID);
MP215date = J{1};
MP215time = J{2};
MP215energyConsumption = J{3};
% ----------------------------------------------
% ----------------------------------------------

% figure(1)
% plot(MP215energyConsumption)


for k=1:20159
    Agg5HHFull(k)=MP15energyConsumption(292406+k)+MP25energyConsumption(250129+k)+MP35energyConsumption(107759+k)+MP65energyConsumption(107508+k)+MP85energyConsumption(106196+k);
    Agg10HHFull(k)=Agg5HHFull(k)+MP115energyConsumption(107083+k)+MP155energyConsumption(345907+k)+MP165energyConsumption(105718+k)+MP205energyConsumption(107937+k)+MP215energyConsumption(108643+k);
end


for k=1:20159
    DSEnergyMP15(k)=MP15energyConsumption(292406+k);
end
for k=1:19997
    DSEnergyMP25(k)=MP25energyConsumption(250129+k);
end
for k=1:20153
    DSEnergyMP35(k)=MP35energyConsumption(107759+k);
end
for k=1:20153
    DSEnergyMP65(k)=MP65energyConsumption(107508+k);
end
for k=1:20110
    DSEnergyMP85(k)=MP85energyConsumption(106196+k);
end
for k=1:20021
    DSEnergyMP115(k)=MP115energyConsumption(107083+k);
end
for k=1:20104
    DSEnergyMP155(k)=MP155energyConsumption(345907+k);
end
for k=1:20156
    DSEnergyMP165(k)=MP165energyConsumption(105718+k);
end
for k=1:20136
    MP205EnergyReduced(k)=MP205energyConsumption(107937+k);
end
for k=1:20144
    DSEnergyMP215(k)=MP215energyConsumption(107644+k);
end

% figure(2)
% plot(DoesThisWork1)
% figure(3)
% plot(DoesThisWork2)

for k=1:2880
     DSEnergyMP15Day2(k)=MP15energyConsumption(295284+k);
     DSEnergyMP15Day3(k)=MP15energyConsumption(298164+k);
     DSEnergyMP15Day4(k)=MP15energyConsumption(301044+k);
     DSEnergyMP15Day5(k)=MP15energyConsumption(303924+k);
     DSEnergyMP15Day6(k)=MP15energyConsumption(306804+k);
     DSEnergyMP15Day7(k)=MP15energyConsumption(309684+k);
     DSEnergyMP35Day2(k)=MP35energyConsumption(110635+k);
     DSEnergyMP35Day3(k)=MP35energyConsumption(113515+k);
     DSEnergyMP35Day4(k)=MP35energyConsumption(116395+k);
     DSEnergyMP35Day6(k)=MP35energyConsumption(122154+k);
     DSEnergyMP65Day2(k)=MP65energyConsumption(110385+k);
     DSEnergyMP65Day3(k)=MP65energyConsumption(113265+k);
     DSEnergyMP65Day7(k)=MP65energyConsumption(124781+k);
     DSEnergyMP165Day2(k)=MP165energyConsumption(108596+k);
     DSEnergyMP165Day3(k)=MP165energyConsumption(111476+k);
     DSEnergyMP165Day6(k)=MP165energyConsumption(120114+k);
     DSEnergyMP165Day7(k)=MP165energyConsumption(122994+k);
     DSEnergyMP205Day2(k)=MP205energyConsumption(110792+k);
     DSEnergyMP205Day3(k)=MP205energyConsumption(113672+k);
     DSEnergyMP205Day4(k)=MP205energyConsumption(116552+k);
     DSEnergyMP205Day5(k)=MP205energyConsumption(119432+k);
     DSEnergyMP205Day6(k)=MP205energyConsumption(122312+k);
     DSEnergyMP205Day7(k)=MP205energyConsumption(125192+k);
     DSEnergyMP215Day3(k)=MP215energyConsumption(113401+k);
     DSEnergyMP215Day4(k)=MP215energyConsumption(116281+k);
 end

for k=1:2879
     DSEnergyMP35Day5(k)=MP35energyConsumption(119275+k);
     DSEnergyMP65Day5(k)=MP65energyConsumption(119023+k);
     DSEnergyMP65Day6(k)=MP65energyConsumption(121902+k);
     DSEnergyMP155Day3(k)=MP155energyConsumption(351639+k);
     DSEnergyMP155Day6(k)=MP155energyConsumption(360265+k);
     DSEnergyMP165Day4(k)=MP165energyConsumption(114356+k);
     DSEnergyMP165Day5(k)=MP165energyConsumption(117235+k);
     DSEnergyMP215Day2(k)=MP215energyConsumption(110522+k);
end
for k=1:2878
     DSEnergyMP35Day7(k)=MP35energyConsumption(125034+k);
     DSEnergyMP15Day1(k)=MP15energyConsumption(292406+k);
     DSEnergyMP65Day4(k)=MP65energyConsumption(116145+k);
     DSEnergyMP85Day6(k)=MP85energyConsumption(120563+k);
     DSEnergyMP165Day1(k)=MP165energyConsumption(105718+k);
     DSEnergyMP215Day1(k)=MP215energyConsumption(107644+k);
     DSEnergyMP215Day7(k)=MP215energyConsumption(124910+k);
end
for k=1:2877
    DSEnergyMP25Day5(k)=MP25energyConsumption(261525+k);
    DSEnergyMP65Day1(k)=MP65energyConsumption(107508+k);
    DSEnergyMP215Day5(k)=MP215energyConsumption(119161+k);
end
for k=1:2876
    DSEnergyMP35Day1(k)=MP35energyConsumption(107759+k);
    DSEnergyMP85Day3(k)=MP85energyConsumption(111938+k);
    DSEnergyMP85Day4(k)=MP85energyConsumption(114814+k);
    DSEnergyMP115Day6(k)=MP115energyConsumption(121360+k);
end
for k=1:2875
    DSEnergyMP85Day2(k)=MP85energyConsumption(109063+k);
end
for k=1:2874
    DSEnergyMP155Day4(k)=MP155energyConsumption(354518+k);
end
for k=1:2873
     DSEnergyMP25Day4(k)=MP25energyConsumption(258652+k);
     DSEnergyMP85Day5(k)=MP85energyConsumption(117690+k);
     DSEnergyMP155Day5(k)=MP155energyConsumption(357392+k);
end
for k=1:2872
    DSEnergyMP215Day6(k)=MP215energyConsumption(122038+k);  
end
for k=1:2870
    DSEnergyMP25Day3(k)=MP25energyConsumption(255782+k);
end
for k=1:2869
    DSEnergyMP25Day7(k)=MP25energyConsumption(267257+k);
    DSEnergyMP115Day4(k)=MP115energyConsumption(115637+k);
    DSEnergyMP155Day1(k)=MP155energyConsumption(345907+k);
end
for k=1:2868
    DSEnergyMP115Day7(k)=MP115energyConsumption(124236+k);
end
for k=1:2867
    DSEnergyMP85Day1(k)=MP85energyConsumption(106196+k);
    DSEnergyMP115Day3(k)=MP115energyConsumption(112770+k);
    DSEnergyMP155Day7(k)=MP155energyConsumption(363144+k); 
end
for k=1:2865
    DSEnergyMP85Day7(k)=MP85energyConsumption(123441+k);
end
for k=1:2863
    DSEnergyMP155Day2(k)=MP155energyConsumption(348776+k);
end
for k=1:2861
    DSEnergyMP25Day2(k)=MP25energyConsumption(252921+k);
end
for k=1:2855
    DSEnergyMP25Day6(k)=MP25energyConsumption(264402+k);
    DSEnergyMP205Day1(k)=MP205energyConsumption(107937+k);
end
for k=1:2854     
    DSEnergyMP115Day5(k)=MP115energyConsumption(118506+k);
end
for k=1:2851
    DSEnergyMP115Day2(k)=MP115energyConsumption(109919+k);
end
for k=1:2836
    DSEnergyMP115Day1(k)=MP115energyConsumption(107083+k);
end
for k=1:2792
    DSEnergyMP25Day1(k)=MP25energyConsumption(250129+k);
end