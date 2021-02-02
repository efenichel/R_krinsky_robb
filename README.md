## The function krCI computes Krinksy-Robb parametric bootstraps for a ratio of estimated parameters.
 mean is the coefficients from a regression
 vcm is the variance-covariance matrix
 num is the element from the coefficient list that is the numerator of the ratio
 dem is the element from the coefficient list that is the denominator of the ratio
 draws is the number of bootstrap draws
 cI the size of the confidence interval default is 0.95

 for regression my.reg <- lm(y ~ x1 + x2 + x3 + x4, data = data)
 the KR confidence interval for teh parameters associate with 
 ratio \beta_3 / \beta_2 is
 krCI(mean = my.reg$coefficients, 
        vcm = vcov(my.reg), 
        num = 3, dem = 2, 
        draws = 1000, 
        ci = 0.95)
The first element returned in the confidence interval
The second element is this list of draws.
