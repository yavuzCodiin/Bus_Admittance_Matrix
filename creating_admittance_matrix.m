load branchdatafollows.txt;                    %importing/loading specified variables from the MAT-file, 
                                               %filename in this case from branchdatafollows.txt
Fb = branchdatafollows(: ,1);                  %This line is for showing the from bus data
Tb = branchdatafollows(: ,2);                  %This line is for from bus data
r = branchdatafollows(: ,3);                   %This line is for resistance data
x = branchdatafollows(: ,4);                   %this line is for reactance data
b = branchdatafollows(: ,5);                   %This line is for susceptance data
z = r + 1i*x;                                  %Formula for calculating impedance
Y = 1./z;                                      %Formula for calculating admitannce
b = 1i*b;                                      %By multiplying susceptance with i to make it imaginary
n_bus = max(max(Fb),max(Tb));                  %Gives us number of buses we have available 
n_branch = length(Fb);                         %Gives us number of branches we have available
Ybus = zeros(n_bus, n_bus);                    %Creating Ybus with zeros command, this can be used to initialize Ybus matrix 
for k=1 : n_branch                             %Creating off diagonal content of Matrix
 Ybus(Fb(k), Tb(k)) = -Y(k);
 Ybus(Tb(k), Fb(k)) = Ybus(Fb(k), Tb(k));
end
 %Creating diagonal content of Matrix
for m=1 : n_bus 
 %for loop starting from 1 to number of buses available
 for n=1 : n_branch                            %for loop starting from 1 to number of branches available
 if Fb(n) == m || Tb(n) == m                   %Whether Fb number is equal to Tb number or not
 
 Ybus(m, m) = Ybus(m, m) + Y(n)+b(k);          %If the above condition is true we start to calculate 
Ybus 
 end 
 end 
end
Ybus()                                         %Displaying Ybus
