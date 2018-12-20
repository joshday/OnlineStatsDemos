# OnlineStats Tour

```julia; run;
using OnlineStats
```

# Basics

## Stats are types

```julia; repl;
m = Mean()
```

## Stats can be updated

```julia; repl;
fit!(m, 1.0)
fit!(m, (2, 3))
fit!(m, [4, 5, 6])
```

## Stats can be merged 

```julia; repl;
m2 = fit!(Mean(), 7:12)

merge!(m, m2)
```

# Categories of Stats

## 1. Statistics

```julia;repl;
Mean()
Variance()
P2Quantile()
```

## 2.  Collections of Statistics

- A `Series` fits multiple stats with the same data series.
- A `Group` "broadasts" stats over different data series.

```julia;repl;
o = Series(Mean(), Variance(), P2Quantile())

fit!(o, randn(1000))
```

```julia;repl;
o = Group(Mean(), Mean())

fit!(o, eachrow(randn(1000, 2)))
```

## 3. Data Viz

```julia;repl
using Plots

o = fit!(Hist(50), y)

plot(o)
```

```julia;hide;
png("viz1.png")
```
![](viz1.png)