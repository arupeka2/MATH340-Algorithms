%% Numerical Solution

ts = 0:1:12; vs = zeros(1,13);      % Vectors of times and v values
for t = 1:12                        % Compute numerical solution using Euler's Method
    vs(t+1) = vs(t) + (49-vs(t))/5;
end
plot(ts,vs,'x'); vs;                % Plot solution and display solution values
hold on


%% Exact Solution

syms v(ts)                          % This is the syms function for my function I made
v(ts) = 49-49*exp(-ts/5);
vel = v(0:12);                      % Makes a table of values that I need
vNonSym = double(vel);              % Converts the Sym function to actual numerical values
fplot(ts,v,[0,12]);                 % Plotting on the same graph as the numerical

%% Percentage Error
Error = zeros(1,13);
for ts = 1:12
    Error(ts) = abs((vs(f)-vNonSym(f))/vNonSym(f))*100;
end

Error
