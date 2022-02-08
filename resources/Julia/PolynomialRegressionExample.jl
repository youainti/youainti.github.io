#=
Polynomial regression

Consider the univariate Polynomial 

y = β₀ + β₁ ̇x+ β₂ x²

this can be solved using least squares (the method used by Numpy's polyfit) as follows
=#

using LinearAlgebra

n = 15

#Generate model data
y = rand(n)
intercept = ones(n)
x = randn(n)
#square the x data
x² = x.^2

X = hcat( intercept, x, x²)

println("Solving the univaritate polynomial equation")

B = X'X\X'y #ordinary least squares estimator
println(B)


#=
Covariance estimation can use this same approach using the estimator

Q = 1/n * (y-XB) (y-XB)ᵀ
=#


model_residuals = y - X*B

#extract dimensions
_, p = size(X)
degrees_freedom = n-p

β_cov = model_residuals'model_residuals/(n-p) * (X'X)^-1
#basic covariance estimator (doesn't deal with heteroskedasticity or other issues in your estimation)

#=
One of the benefits of using this algorithm is that it is easily generalizable to multivariate
polynomials. Consider

y = β₀ + β₁ ̇x+ β₂ x² + γ₁ z + γ₂ z² ̇x+ λ x⋅z

the βs and covariance of βs are calculated just the same.
=#


#Generate z's
z = randn(n)
z² = z.^2
#generate the x ⋅ z term
xz = x .* z


Z = hcat( intercept, x, x², z, z², xz)

println("Solving the multivaritate polynomial equation y = Zγ")
println(Z'Z\Z'y) #note that this uses the backslash


function OLS(Y,A)
    #=
    This implements Ordinary Least Squares, with all of the assumptions that entails
    =#
    B = A'A\A'Y

    residuals = Y - A*B

    covariance = residuals'residuals * (A'A)^-1

    return (B=B,res=residuals,cov=covariance)
end

println(OLS(y,Z))