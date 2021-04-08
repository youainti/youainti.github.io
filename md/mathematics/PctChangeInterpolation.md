# Interpolation of compounding percentage changes

Let the following define the terms.
 - $X$ is the final value
 - $P$ is the principle value
 - $R$ is the observed percentage change between $X$ and $R$
 - $n$ is the number of periods to interpolate.
 - $r$ is the interpolated rate of change.

Then by definition
$$
R = \frac{X-P}{P} \\
\frac{X}{P} = 1 +  R
$$

From high school, recall that the compounding formula is:
$$
X = P(1+r)^n
$$

Thus by dividing $P$ over, substitution, and algebra we get
$$
    r = (1+R)^\frac{1}{n} - 1
$$

## Application notes
Note that this is different from the standard $APR = \frac{R}{n}$ rate, with $n=12$.
