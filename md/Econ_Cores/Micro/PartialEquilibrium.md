# Partial Equilibrium
***
***

## Utility Maximization
$$
\max_x u(x)\\
\text{Subject To:  } w\geq x \cdot p
$$
The solution is the **walrasian (marshellian) demand function**:
$x(w,p)$

**Indirect Utility Function**
$v(p,w) = u(x(w,p))$

## Expenditure Minimization
$$
\min_x x \cdot p \\
\text{Subject To:  } \bar u = u(x)
$$
The solution is the **hicksian demand function**:
$h(p,u)$


**Expenditure Function**
$e(p,u) = p\cdot h(p,u)$

Also the expenditure functon is related by:
$\frac{\partial}{\partial p_l} e(p,u) = h_l(p,u)$

***
## Relationship between the Two

**Roy's Identity**
$$
x_l(p,w) = \frac{- \frac{\partial}{\partial p_l} V(p,w)}{\frac{\partial}{\partial w} V(p,w)}
$$


**Slusky Equation**
$$
D_p h(p,u) = D_p x(p,w) + D_w x(p,w) \cdot x(p,w)^T 
$$
The Slusky Matrix is the left hand side of this matrix equation.

At a given equilibrium $u,w,p$ we have that
$$
h(p,u) = x(p,e(p,u)) \text{ and } w = e(p,u)
$$

***
## Welfare Measures

**Compensating Variation**\
For a given change between $(p_1,u_1)$ and $(p_2,u_2)$, when we
want to look at compensation required after a change.
$$
CV(p_1,p_2,w) = \int_{p_2}^{p_1} h(\rho,u_1) d\rho
$$

**Equivalent Variation**
For a given change between $(p_1,u_1)$ and $(p_2,u_2)$, when we
want to look at compensation required before a change.
$$
EV(p_1,p_2,w) = \int_{p_2}^{p_1} h(\rho,u_2) d\rho
$$


***
## Other Important Measures

**Marginal Rate of (Technical) Substitution**
$$
MRS_{x,y} = \frac{u_x(x,y)}{u_y(x,y)}
$$

**Elasticity of Substitution**
$$
\sigma = \frac{\ln \frac{x}{y}}{\ln MRS_{y,x}}
$$
