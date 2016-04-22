
# the string concatnation operator for R

`%^%` <- function(fmt, ...) {
    do.call(sprintf, as.list(c(fmt , ...)))
}
