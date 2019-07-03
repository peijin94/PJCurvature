theta = 0:0.2:2*pi;

kappa_arr = [];
posi_arr = [];
norm_arr = [];

for num = 2:(length(theta)-1)
    x = 5* sin(theta(num-1:num+1));
    y = 5* cos(theta(num-1:num+1));
    [kappa,norm_l] = PJcurvature(x,y);
    posi_arr = [posi_arr;[x(2),y(2)]];
    kappa_arr = [kappa_arr;kappa];
    norm_arr = [norm_arr;norm_l];
end


quiver(posi_arr(:,1),posi_arr(:,2),...
    kappa_arr.* norm_arr(:,1),kappa_arr.* norm_arr(:,2))
