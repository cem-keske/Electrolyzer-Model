function [fitresult, gof] = model_fit(I_stack, T, U_cell)
    [xData, yData, zData] = prepareSurfaceData( I_stack, T, U_cell );
    ft = fittype( '1.4813+1.11e-4*T+a*T+(b+c*T)*sqrt(I)+(d+h*T)*I', 'independent', {'I', 'T'}, 'dependent', 'z' );
    opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
    opts.Display = 'Off';
    opts.startpoint = [0,0,0,0,0];
    [fitresult, gof] = fit( [xData, yData], zData, ft, opts );