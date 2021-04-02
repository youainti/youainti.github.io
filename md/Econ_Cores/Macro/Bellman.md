# Deriving the Bellman Equation

## Problem Statement

A common problem statment follow the pattern
\begin{align}
    \max_{(x_t,c_t)^\infty_{t=0}} & \sum_{t=0}^\infty \big[ \beta^t u(c_t) \big] \\
    & \text{Subject To: } x_{t+1} + c_t = f(x_t)
\end{align}

We need to transform this into the recursive bellman form.

## Important Math

#### Principle of Optimality: 
An optimal policy has the property that whatever the initial state and initial decision are, the remaining decisions must constitute an optimal policy with regard to the state resulting from the first decision. [Wikipedia: The Bellman Equation](https://en.wikipedia.org/wiki/Bellman_equation#Bellman's_principle_of_optimality)

Thus the following has the optimal property.
$$
\max_{(a_i)^n_{i=1}} \sum_{i=1}^n f(a_i) = \max_{a_1} f(a_1) 
    + \max_{(a_i)^n_{i=2}} \sum_{i=2}^n f(a_i)
$$


#### Envelope Theorem
The envelope theorem simplifies the chain rule under the case of optimal solutions.

Given the following policy function:
$$
y(x) = \text{argmax}_{y} f(x,y)
$$
In the context of
$$
V(x) = \max_{y} f(x,y)
$$
Then if $y(x)$ is a functional solution to the above, the envelope theorem states:
$$
\frac{\partial}{\partial x} V(x) =
	\frac{\partial}{\partial x} f(x,y(x)) 
$$

## Bellmanizing!
\begin{align}
    V(x_0) &= \max_{(x_t,c_t)^\infty_{t=0}} \sum_{t=0}^\infty \big[ \beta^t f(x) \big] \\
    & = \max_{x_1} f(x_0) +\beta \max_{(x_t)^\infty_{t=1}}  \sum_{t=0}^\infty \big[ \beta^t f(x_t) \big] \\
    & = \max_{x_0} f(x_0) + \beta V(x_1(x_0))
\end{align}

## Solution Concepts
We can "solve" the bellman equation by taking FOCs with respect to the choice variables (Choice variables were not included explicitly in my description).


### Policy Functions
One solution concept is collecting only the policy or choice functions that 
describe the optimal choices of the agents involved.

#### Euler Equations
Here are some useful definitions.

| Item  | Type  | Mathematical Description | English Description |
| :- | :- | :--- | :------- |
| $x_t$ | Variable  | $x_t \in X \subset R^k$ | The state variables. |
| $y_t$ | Variable  | $y_t \in Y \subset R^j$ | The control variables. |
| $V$ | Function | $V: X \rightarrow R$ | The value function. |
| $F$ | Function | $F: X\times Y \rightarrow R$ | The time seperable objective function. |
| $g$ | Function | $g: X\times Y \rightarrow X$ | The equality constraints mapping state and controls to next period state. |
| $h_u$ | Function | $h_u: X\times Y \rightarrow [0]^m$ | The upper inequality constraints on variables. |
| $h_l$ | Function | $h_l: X\times Y \rightarrow [0]^n$ | The lower inequality constraints on variables. |

This can probably be written with inequality constraints on both state and control variables.

The bellman will take the form:
\begin{align}
	V(x_t) &= \max_{y_t} F(x_t, y_t) + \beta V(x_{t+1}) \\
	\text{subject to:} \\
	& x_{t+1} = g(x_t,y_t) \\
	& 0 \geq h_u(x_t, y_t) \\
	& 0 \leq h_l(x_t, y_t) \\
\end{align}
With the inequality constraints, we use KKT to find:
\begin{align}
	L &= \max_{y_t} F(xt_t,y_t) + \beta V(x_{t+1}) 
		- \mu \left[ x_{t+1} - g(x_t, y_t) \right]
		+ \lambda  h_l(x_t) 
		- \omega  h_u(x_t)  \\
	L &= \max_{y_t} F(xt_t,y_t) + \beta V\left[ g(x_t,y_t) \right]
		+ \lambda  h_l(x_t) 
		- \omega  h_u(x_t)  \\
\end{align}
This gives us the $j$ FOCs and $m+n$ KKT Conditions:
\begin{align}
	[0] = D_y L &= D_y F(x_t, y_t) + \beta D^T_{x_{t+1}} V(g(x_t,y_t)) \cdot D_y g(x_t,y_t)
		+ \lambda D_y h_l(x_t) 
		- \omega D_y h_u(x_t)  \\
	[0] &= \lambda h_l(x_t) \\
	[0] &= \omega  h_u(x_t)  \\
\end{align}

Now we must use the envelope theorem to handle the $D^T V()$ vector. 
Let $y_t (x_t)$ represent the optimal policy functions.

\begin{align}
D_{x_t} V(x_t) &= D_{x_t} F(x_t, y_t(x_t)) \\
D^T_{x_{t+1}} V(x_{t+1}) &= D^T_{x_{t+1}} F(x_{t+1}, y_{t+1}(x_{t+1})) 
\end{align}

Thus we get the set of Euler Equations and KKT Conditions:
\begin{align}
	[0]  &= D_y F(x_t, y_t) 
		+ \beta D^T_{x_{t+1}} F(x_{t+1}, y_{t+1}(x_{t+1})) \cdot D_y g(x_t,y_t)
		+ \lambda D_y h_l(x_t) 
		- \omega D_y h_u(x_t)  \\
	[0] &= \lambda h_l(x_t) \\
	[0] &= \omega  h_u(x_t)  \\
\end{align}
Don't forget to include probabilities and states in the case you are dealing with a stochastic version.

##### Guess and Check
If you have a guess for the form of the optimal policy functions, you can now substitute and solve for them.

##### Policy Function Iteration
This gives you a way to get a numerical (or symbolic if you can do the functional limits) representation of the policy
functions.




### Value Functions
The Value Function solution concept builds on the idea of the policy function 
approach to calculate the overall utility value under the optimal policy.

#### Value Function Iteration

#### Guess and Check

