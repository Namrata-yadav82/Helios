% for calculation of inductace of in transmission line per unit length

% radius of cross-section area of conductor (m^2)
r = input('enter the radius of conductor (m^2) ');

GMR = 0.7788*r; % geometric mean radius
meu = 4*pi*10^(-7); % magnetic permebility in non-magnetic material

% distance from the conductor
d = 0:0.1:1;

% conditions
disp('###############################')
disp('Choose the option')
disp('1. For single conductor')
disp('2. For three phase transmission line ')

opt1 = input('Enter your option ');

if opt1 == 1
    l = (meu/(2*pi))*log(d/GMR);
    plotgraph(d,l)
elseif opt1 == 2
    disp('Choose the option')
    disp('1. For symmetrical arrangement')
    disp('2. For Transposed arrangment')
    opt2 = input('Enter your option ');
    if opt2 == 2
        Dab = input('Enter the distance between conductor A and conductor B');
        Dbc = input('Enter the distance between conductor B and conductor C');
        Dca = input('Enter the distance between conductor C and conductor A');
        GMD = (Dab+Dbc+Dca)^(1/3);
        l = (meu/(2*pi))*log(GMD/GMR);
        disp(l)
    else
        D = input('Enter the distance between conductors');
        l = (meu/(2*pi))*log(D/GMR);
        disp(l)
    end
end

% for ploting the graph
function msg = plotgraph(x,y)
    figure
    plot(x,y)
    title('Inductance of single transmission line')
    xlabel('distance form the wire (m)')
    ylabel('inductance value (H/m)')
    msg = 'ploting graph';
end