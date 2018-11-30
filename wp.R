# Publish to wordpress

devtools::install_github(c("duncantl/XMLRPC", "duncantl/RWordPress"))
options(RCurlOptions = list(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")))
library(RWordPress)
options(WordpressLogin = c(user = 'filip&lV%OHj!Gg%A!yk*$TnlLJEhK'),
        WordpressURL = 'https://www.ferrologic.se/wp-admin/xmlrpc.phpp')
library(knitr)
knit2wp('ordnaalys.Rmd', title = 'Your post title', action = c("newPost"),
        encoding = getOption("encoding"), publish = FALSE)

knit2wp(input, title = "A post from knitr", ..., envir = parent.frame(), 
        shortcode = FALSE, action = c("newPost"), postid, 
        encoding = getOption("encoding"), publish = TRUE)

https://www.ferrologic.se/wp-admin/index.php

??RWordPress
