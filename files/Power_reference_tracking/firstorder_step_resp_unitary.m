function [fitresult, gof] = firstorder_step_resp_unitary(tt, y)
%CREATEFIT4(TT,Y)
%  Create a fit.
%
%  Data for '1st_order_system_least_squares' fit:
%      X Input : tt
%      Y Output: y
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 20-May-2021 16:21:09


%% Fit: '1st_order_system_least_squares'.
[xData, yData] = prepareCurveData( tt, y );

% Set up fittype and options.
ft = fittype( '(1-exp(-x./tau))', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = 0.970592781760616;

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
%figure( 'Name', '1st_order_system_least_squares' );
%h = plot( fitresult, xData, yData );
%legend( h, 'y vs. tt', '1st_order_system_least_squares', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
%xlabel( 'tt', 'Interpreter', 'none' );
%ylabel( 'y', 'Interpreter', 'none' );
%grid on

