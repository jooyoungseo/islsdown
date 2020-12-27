find_resource <- function(template = "isls_article", file = "template.tex") {
  system.file("rmarkdown", "templates", template, "resources", file, package = "islsdown", mustWork = TRUE)
}

# lua_filters <- function(...) {
#  c(rbind("--lua-filter", find_resource("isls_article", c(...))))
# }

islsdown_file <- function(...) {
  system.file(..., package = "islsdown", mustWork = TRUE)
}
