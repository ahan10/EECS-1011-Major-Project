% Ahan Bhargava - 218543776

nanx = isnan(Data.PM25);
nanx1 = isnan(Data.O3);
nanx2 = isnan(Data.Benzene);

t = 1:numel(Data.PM25);
t1 = 1:numel(Data.O3);
t2 = 1:numel(Data.Benzene);

Data.PM25(isnan(Data.PM25)) = interp1(t(~nanx), Data.PM25(~nanx), t(nanx));
Data.O3(isnan(Data.O3)) = interp1(t1(~nanx1), Data.O3(~nanx1), t1(nanx1));
Data.Benzene(isnan(Data.Benzene)) = interp1(t2(~nanx2), Data.Benzene(~nanx2), t2(nanx2));

tt = table2timetable(Data);

%Monthly Data
monthly = retime(tt,'daily','mean');
S = timerange(datetime('01 Jan 2019','InputFormat','dd MMM yyyy'),'months');
Jan = monthly(S,:);
T = timerange(datetime('01 Feb 2019','InputFormat','dd MMM yyyy'),'months');
Feb = monthly(T,:);
P = timerange(datetime('01 Mar 2019','InputFormat','dd MMM yyyy'),'months');
Mar = monthly(P,:);
R = timerange(datetime('01 Apr 2019','InputFormat','dd MMM yyyy'),'months');
Apr = monthly(R,:);
W = timerange(datetime('01 May 2019','InputFormat','dd MMM yyyy'),'months');
May = monthly(W,:);
Q = timerange(datetime('01 Jun 2019','InputFormat','dd MMM yyyy'),'months');
Jun = monthly(Q,:);
Y = timerange(datetime('01 Jul 2019','InputFormat','dd MMM yyyy'),'months');
Jul = monthly(Y,:);
L = timerange(datetime('01 Aug 2019','InputFormat','dd MMM yyyy'),'months');
Aug = monthly(L,:);
A = timerange(datetime('01 Sep 2019','InputFormat','dd MMM yyyy'),'months');
Sep = monthly(A,:);
V = timerange(datetime('01 Oct 2019','InputFormat','dd MMM yyyy'),'months');
Oct = monthly(V,:);
E = timerange(datetime('01 Nov 2019','InputFormat','dd MMM yyyy'),'months');
Nov = monthly(E,:);
B = timerange(datetime('01 Dec 2019','InputFormat','dd MMM yyyy'),'months');
Dec = monthly(B,:);

%Yearly Plot for three Pollutants

figure(1)
subplot(3,1,1)
plot(monthly.Date,monthly.PM25,'b-')
title('Yearly plot for PM25');
xlabel('Months');ylabel('PM25 (μg/m3)');
legend('PM25')
grid on

subplot(3,1,2)
plot(monthly.Date,monthly.O3,'b-')
xlabel('Months');ylabel('O3 (ppb)');
title('Yearly plot for O3');
legend('O3')
grid on

subplot(3,1,3)
plot(monthly.Date,monthly.Benzene,'b-')
xlabel('Months');ylabel('Benzene (ppm)');
title('Yearly plot for Benzene');
sgtitle('Yearly Plots for three pollutants')
legend('Benzene')
grid on

%Monthly Plot for PM25

figure(2)
subplot(6,2,1)
plot(Jan.Date,Jan.PM25,'b-o')
xlabel('Date');ylabel('PM25 (μg/m3)');
title('Plot of January for PM25');

subplot(6,2,2)
plot(Feb.Date,Feb.PM25,'b-o')
xlabel('Date');ylabel('PM25 (μg/m3)');
title('Plot of February for PM25');

subplot(6,2,3)
plot(Mar.Date,Mar.PM25,'b-o')
xlabel('Date');ylabel('PM25 (μg/m3)');
title('Plot of March for PM25');

subplot(6,2,4)
plot(Apr.Date,Apr.PM25,'b-o')
xlabel('Date');ylabel('PM25 (μg/m3)');
title('Plot of April for PM25');

subplot(6,2,5)
plot(May.Date,May.PM25,'b-o')
xlabel('Date');ylabel('PM25 (μg/m3)');
title('Plot of May for PM25');

subplot(6,2,6)
plot(Jun.Date,Jun.PM25,'b-o')
xlabel('Date');ylabel('PM25 (μg/m3)');
title('Plot of June for PM25');

subplot(6,2,7)
plot(Jul.Date,Jul.PM25,'b-o')
xlabel('Date');ylabel('PM25 (μg/m3)');
title('Plot of July for PM25');

subplot(6,2,8)
plot(Aug.Date,Aug.PM25,'b-o')
xlabel('Date');ylabel('PM25 (μg/m3)');
title('Plot of August for PM25');

subplot(6,2,9)
plot(Sep.Date,Sep.PM25,'b-o')
xlabel('Date');ylabel('PM25 (μg/m3)');
title('Plot of September for PM25');

subplot(6,2,10)
plot(Oct.Date,Oct.PM25,'b-o')
xlabel('Date');ylabel('PM25 (μg/m3)');
title('Plot of October for PM25');

subplot(6,2,11)
plot(Nov.Date,Nov.PM25,'b-o')
xlabel('Date');ylabel('PM25 (μg/m3)');
title('Plot of November for PM25');

subplot(6,2,12)
plot(Dec.Date,Dec.PM25,'b-o')
xlabel('Date');ylabel('PM25 (μg/m3)');
title('Plot of December for PM25');

sgtitle('Monthly Plots for PM25')

%Monthly Plot for O3

figure(3)
subplot(6,2,1)
plot(Jan.Date,Jan.O3,'b-o')
xlabel('Date');ylabel('O3 (ppb)');
title('Plot of January for O3');

subplot(6,2,2)
plot(Feb.Date,Feb.O3,'b-o')
xlabel('Date');ylabel('O3 (ppb)');
title('Plot of February for O3');

subplot(6,2,3)
plot(Mar.Date,Mar.O3,'b-o')
xlabel('Date');ylabel('O3 (ppb)');
title('Plot of March for O3');

subplot(6,2,4)
plot(Apr.Date,Apr.O3,'b-o')
xlabel('Date');ylabel('O3 (ppb)');
title('Plot of April for O3');

subplot(6,2,5)
plot(May.Date,May.O3,'b-o')
xlabel('Date');ylabel('O3 (ppb)');
title('Plot of May for O3');

subplot(6,2,6)
plot(Jun.Date,Jun.O3,'b-o')
xlabel('Date');ylabel('O3 (ppb)');
title('Plot of June for O3');

subplot(6,2,7)
plot(Jul.Date,Jul.O3,'b-o')
xlabel('Date');ylabel('O3 (ppb)');
title('Plot of July for O3');

subplot(6,2,8)
plot(Aug.Date,Aug.O3,'b-o')
xlabel('Date');ylabel('O3 (ppb)');
title('Plot of August for O3');

subplot(6,2,9)
plot(Sep.Date,Sep.O3,'b-o')
xlabel('Date');ylabel('O3 (ppb)');
title('Plot of September for O3');

subplot(6,2,10)
plot(Oct.Date,Oct.O3,'b-o')
xlabel('Date');ylabel('O3 (ppb)');
title('Plot of October for O3');

subplot(6,2,11)
plot(Nov.Date,Nov.O3,'b-o')
xlabel('Date');ylabel('O3 (ppb)');
title('Plot of November for O3');

subplot(6,2,12)
plot(Dec.Date,Dec.O3,'b-o')
xlabel('Date');ylabel('O3 (ppb)');
title('Plot of December for O3');

sgtitle('Monthly Plots for O3')

%Monthly Plot For Benzene

figure(4)
subplot(6,2,1)
plot(Jan.Date,Jan.Benzene,'b-o')
xlabel('Date');ylabel('Benzene (ppb)');
title('Plot of January for Benzene');

subplot(6,2,2)
plot(Feb.Date,Feb.Benzene,'b-o')
xlabel('Date');ylabel('Benzene (ppb)');
title('Plot of February for Benzene');

subplot(6,2,3)
plot(Mar.Date,Mar.Benzene,'b-o')
xlabel('Date');ylabel('Benzene (ppb)');
title('Plot of March for Benzene');

subplot(6,2,4)
plot(Apr.Date,Apr.Benzene,'b-o')
xlabel('Date');ylabel('Benzene (ppb)');
title('Plot of April for Benzene');

subplot(6,2,5)
plot(May.Date,May.Benzene,'b-o')
xlabel('Date');ylabel('Benzene (ppb)');
title('Plot of May for Benzene');

subplot(6,2,6)
plot(Jun.Date,Jun.Benzene,'b-o')
xlabel('Date');ylabel('Benzene (ppb)');
title('Plot of June for Benzene');

subplot(6,2,7)
plot(Jul.Date,Jul.Benzene,'b-o')
xlabel('Date');ylabel('Benzene (ppb)');
title('Plot of July for Benzene');

subplot(6,2,8)
plot(Aug.Date,Aug.Benzene,'b-o')
xlabel('Date');ylabel('Benzene (ppb)');
title('Plot of August for Benzene');

subplot(6,2,9)
plot(Sep.Date,Sep.Benzene,'b-o')
xlabel('Date');ylabel('Benzene (ppb)');
title('Plot of September for Benzene');

subplot(6,2,10)
plot(Oct.Date,Oct.Benzene,'b-o')
xlabel('Date');ylabel('Benzene (ppb)');
title('Plot of October for Benzene');

subplot(6,2,11)
plot(Nov.Date,Nov.Benzene,'b-o')
xlabel('Date');ylabel('Benzene (ppb)');
title('Plot of November for Benzene');

subplot(6,2,12)
plot(Dec.Date,Dec.Benzene,'b-o')
xlabel('Date');ylabel('Benzene (ppb)');
title('Plot of December for Benzene');

sgtitle('Monthly Plots for Benzene')

%Seasonal Data

F = timerange(datetime('01 Jan 2019','InputFormat','dd MMM yyyy'),datetime('31 Mar 2019','InputFormat','dd MMM yyyy'),'months');
Winter = monthly(F,:);
C = timerange(datetime('01 Apr 2019','InputFormat','dd MMM yyyy'),datetime('31 May 2019','InputFormat','dd MMM yyyy'),'months');
Spring = monthly(C,:);
K = timerange(datetime('01 Jun 2019','InputFormat','dd MMM yyyy'),datetime('31 Aug 2019','InputFormat','dd MMM yyyy'),'months');
Summer = monthly(K,:);
V = timerange(datetime('01 Sep 2019','InputFormat','dd MMM yyyy'),datetime('31 Dec 2019','InputFormat','dd MMM yyyy'),'months');
Autumn = monthly(V,:);

%Sesonal Data

figure(5)
plot(Winter.Date, Winter.PM25,'b-',Spring.Date, Spring.PM25, 'g-', Summer.Date, Summer.PM25, 'm-', Autumn.Date, Autumn.PM25,'k-')
xlabel('Date');ylabel('PM25 (μg/m3)');
title('PM25 pollutant For Winter, Spring, Autumn');
legend('Winter','Spring','Summer','Autumn')
grid on

figure(6)
plot(Winter.Date, Winter.O3,'b-',Spring.Date, Spring.O3, 'g-', Summer.Date, Summer.O3, 'm-', Autumn.Date, Autumn.O3,'k-')
xlabel('Date');ylabel('O3 (μg/m3)');
title('O3 pollutant For Winter, Spring, Summer, Autumn');
legend('Winter','Spring','Summer','Autumn')
grid on

figure(7)
plot(Winter.Date, Winter.Benzene,'b-',Spring.Date, Spring.Benzene, 'g-', Summer.Date, Summer.Benzene, 'm-', Autumn.Date, Autumn.Benzene,'k-')
xlabel('Date');ylabel('Benzene (μg/m3)');
title('Benzene pollutant For Winter, Spring, Summer, Autumn');
legend('Winter','Spring','Summer','Autumn')
grid on
