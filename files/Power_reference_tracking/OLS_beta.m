function beta = OLS_beta(X, y)
    beta = inv(X' * X)* X'*y;
end