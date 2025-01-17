% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_pattern.R
\name{read_pattern}
\alias{read_pattern}
\title{Mengekstrak data.frame dari string berdasarkan pola}
\usage{
read_pattern(
  s,
  pos_non_angka = NULL,
  pos_angka = NULL,
  col_names = paste0("v", 1:length(c(pos_non_angka, pos_angka))),
  sep = "\\\\s",
  pattern = NULL,
  ...
)
}
\arguments{
\item{s}{input string}

\item{pos_non_angka}{posisi kolom yang merupakan non angka}

\item{pos_angka}{posisi kolom yang merupakan angka}

\item{col_names}{nama kolom yang diinginkan. default akan v1, v2 ...}

\item{sep}{pemisah antar kolom. default adalah spasi}

\item{pattern}{pola dari data.frame jika anda tidak ingin mengisi \code{pos_non_angka} dan \code{pos_angka}}

\item{...}{parameter untuk fungsi \code{extract}}
}
\value{
data.frame
}
\description{
Mengekstrak data.frame dari string berdasarkan pola
}
\examples{
s1 <-
  "David howw -.01 .01 0.01 very good -1 -22,1 333 bad .01
 marie jane -.01 .01 0.01 moderate -1 -22.1 33.3 not bad  99."

read_pattern(
  s1,
  pos_non_angka = c(1, 5, 9),
  pos_angka = c(2:4, 6:8, 10)
)

s2 <-
  "lala 1101180 ; 3D52
 john 1119110 ; 3SK3"

read_pattern(
  s2,
  pattern = "(nonangka)\\\\s(angka)\\\\s;\\\\s(nonangka)",
  col_names = c("nama", "nim", "kelas")
)
}
