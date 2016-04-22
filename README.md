# String format operator for R
A simple string format operator for R, similar to the % operator in Python. 

It makes use of R's `sprintf` function. Code is very simple:

```R
`%^%` <- function(fmt, ...) {
    do.call(sprintf, as.list(c(fmt , ...)))
}
```

The operator is defined as `%^%`. The only place holder needed is `%s` (and it's the only placeholder that can be used). 

## Examples

```R
> "Today is %s. Date is '%s'. Time stamp is %s" %^% c('Friday', '22 Apr 2016 03:19:01 GMT', 1461295176)
[1] "Today is Friday. Date is '22 Apr 2016 03:19:01 GMT'. Time stamp is 1461295176"
```

# License
MIT License
