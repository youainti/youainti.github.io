# Uncertanty and Lotteries
Prep for Cores 2020-05
***
***
# General Approach
## Assumputions
**Consequentialist premise:**
Consumers care only about the "reduced" simple lottery not the
full compound lottery.

**Continuity:**
The preference relation over lotteries is continuous.

Given the preference relation $R(a,b)$ - $a$ preferred to $b$ -
for the lotteries $l,l',l'' \in L$, the following
two sets are closed.

$\big\{\alpha \ni [0,1]: R({}_{l}\alpha_{l'},l'')\big\}$  and
$\big\{\alpha \ni [0,1]: R(l'',{}_{l}\alpha_{l'})\big\}$

This eliminate the possibility of lexographic like preference relations.


**Independence Axiom:**
$\forall l,l',l'' \in L \wedge \alpha \in [0,1]$, we have
$$
R(l,l') \Leftrightarrow  R({}_{l}\alpha_{l''},{}_{l'}\alpha_{l''})
$$

***
## Expected Utility Form

**V.NM Expected Utility Function:**
Over the (finite) simple lottery $l = [l_1, l_2 \dots l_n]^T$, there exists a set of
coefficents $u$ such that if you treat them as vectors, the
utility can be written as a dot product.
$$
U(l) = u \cdot l
$$
In other words, the utility is linear in the probabilities probabilities $l_i \in l$.

We often say that it is in v.NM form iff it is linear in probabilities.

**Expected Utility Theorem**
If a rational preferernce relation over lotteries satisfies continuity and the independence axiom, then it must be representable in a v.NM form.

***
## Paradoxes
These are differences between the way preferences should work
with the continuity and IA assumptions, but how they differ
in reality.

### Allais Paradox
Two sets of two lotteries over $[2.5e6, 5e5, 0e0]$,  

Make a choice in each set
- First set is $L_1 = [0,1,0]$ and $L_1' = [0.1,0.89,0.01]$
- Second set is $L_2 = [0,0.11,0.89]$ and $L_2' = [0.1,0,0.90]$

It can be shown that this violates I.A.

***
***
# Money Lotteries
We are treating $x$ as a monetary event.

## Risk Adversion
Consider the lottery $F$ over outcomes $x$:
$$
U(F) = \int u(x) F(x) dx
$$

**Bernoulli Utility function:**
is the term $u(x)$, i.e. the utility from a given outcome $x$.

**Von Neumann-Morgenstern (v.NM) Utility Function:**
is the term $U(F)$, i.e. the utility over the lottery.
Note that it is linear in $F$, the probability distribution,
but this time has a "infinite" sum (integral).


**Risk Adverse:** IFF $E(u(x)) \leq u(E(x))$ for "all"
probability distributions.
In other words, Risk adverse if satisfies concave Jensen's
Inequality.

**Certanty Equivalent:**
The certanty equivalent is $c(F,u)$ such that
\\[
u(c(F,u)) = E(u(x)) = \int u(x)f(x)dx
\\]

**Probability Premium:**
The probability premium is $\pi(x,\epsilon,u)$ such that for
certain outcome $y$
$$
u(y) = [ \frac{1}{2} + \pi ] u(x+\epsilon)
        + [ \frac{1}{2} - \pi ] u(x-\epsilon)
$$

**Absolute Risk Adversion**
$r_A(x) = \frac{-u''(x)}{u'(x)}$

**Relative Risk Adversion**
$r_R(x) = x \frac{-u''(x)}{u'(x)} = x \cdot r_A(x)$


### Risk Adverse Equivalent Conditions
- Concave utility function.
- The certanty equivalent is less than the expected value of the monetary event.
- The Probability premium is positive.


***
## Ordering of Lotteries
**First Order Stochastic Dominance**
Expected value of one lottery is greater than another.


**Second Order Stochastic Dominance**
Variance of one lottery is less than another when their expected
values match.
