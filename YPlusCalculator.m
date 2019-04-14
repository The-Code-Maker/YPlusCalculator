function [deltas] = YPlusCalculator(velocity,density,viscosity,len,yplus)

Re_x = density*velocity*len/viscosity;
C_f = 0.026/Re_x^(1/7);
tao_wall = C_f*density*velocity^2/2;
U_fric = sqrt(tao_wall/density);
deltas = yplus*viscosity/U_fric/density;

end