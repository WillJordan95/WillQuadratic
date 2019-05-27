#' Quadratic Formula
#'
#' @param a coefficient of the square term in a quadratic (numeric)
#' @param b coefficient of linear term in a quadratic (numeric)
#' @param c constant term in quadretic (numeric)
#'
#' @return the roots of the quadratic, numeric if repeated roots, vector of numerics if
#' distinct real roots, vector of (class) complex objects if imaginary roots
#' @export
#'
#' @examples
#' quadratic_formula(2, -12, 18)
#' quadratic_formula(1, -5, 6)
#' quadratic_formula(2, -2, 1)
quadratic_formula <- function(a,b,c){

  #Calculating discriminant
  d = b^2 - 4*a*c

  #Solution depending on nature of discriminant
  if (d==0){ #Repeated root

    x = -b/(2*a)

  }
  else if (d>0){ #Distinct, real roots

    x1 = 1/(2*a) * (-b + sqrt(d))
    x2 = 1/(2*a) * (-b - sqrt(d))
    x = c(x1, x2)

  }
  else { #Complex roots

    r <- c(-b/(2*a), -b/(2*a))
    im <- c(1/(2*a)*sqrt(abs(d)), -1/(2*a)*sqrt(abs(d)))
    x <- complex(2, real = r, imaginary = im)

  }
return(x)
}
