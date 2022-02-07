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

println("Solving the univaritat polynomial equation")
println(X\y)


#=
One of the benefits of using this algorithm is that it is easily generalizable to multivariate
polynomials. Consider

y = β₀ + β₁ ̇x+ β₂ x² + γ₁ z + γ₂ z² ̇x+ λ x⋅z

This is simply solved as 
=#

#Generate z's
z = randn(n)
z² = z.^2
#generate the x ⋅ z term
xz = x .* z


Z = hcat( intercept, x, x², z, z², xz)

println("Solving the multivaritat polynomial equation")
println(Z\y) #note that this uses the backslash
