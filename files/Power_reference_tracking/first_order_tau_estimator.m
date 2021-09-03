function tau = first_order_tau_estimator(measurements, diff, T_sample, y_initial, y_final)
%UNTİTLED3 Summary of this function goes here
% measurements : size = N    ROW VECTOR of measurement set y1, y2, y3 at times t=1, t=2
% diff :         size = N    ROW VECTOR of differences y1-y0 , y2-y1...
% T_sample :     double      sampling period
% y_initial :    double      the initial value before step jump
% y_final :      double      the final falue after step jump

measurements = measurements - y_initial; %start from zero
jump = y_final-y_initial; %the step jump
X = [diff'];
y = (measurements'-jump).*T_sample;
tau = -OLS_beta(X,y);
end

