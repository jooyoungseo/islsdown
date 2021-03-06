
<!-- README.md is generated from README.Rmd. Please edit that file -->

# islsdown

<!-- badges: start -->
<!-- badges: end -->

The goal of islsdown is to provide a boilerplate reproducible template
for the International Society of the Learning Sciences (ISLS) Annual
Meeting submissions using R Markdown.

## Installation

### Package Installation

`islsdown` is currently under development on GitHub. Please install and
test the package as follows:

    if(!require(remotes)) {
    install.packages("remotes")
    }

    remotes::install_github('jooyoungseo/islsdown')

### TeX Installation

While not required for installation (as other LaTeX installations will
likely also suffice), we recommend the use of the
[{tinytex}](https://yihui.org/tinytex/) R package and associated LaTeX
installation.

## Example

This is a basic example which shows you how to use `islsdown` package.
While other formats are usable, `pdf` output is fully supported at this
moment.

### Loading the package

    library(islsdown)

### For RStudio users

For RStudio users, as long as `islsdown` is installed, we recommend to
create a new project which contains the file used for the contents of
the manuscript (in `index.Rmd`, described more below) and other files
used to render the file.

1.  From within RStudio, select “File” -&gt; “New Project” -&gt; “New
    Directory” and then select the *ISLS Annual Meeting* (`islsdown`)
    template.

2.  Next, give your new directory a name, such as `my-isls-paper`.

3.  Then, edit the `index.Rmd` document, which should automatically be
    open, but which can always be opened by selecting the file from its
    location in the “Files” pane of RStudio. More instructions on
    editing the `index.Rmd` file are provided in the “Using the template
    (index.Rmd)” section.

### For non-RStudio users

For non-RStudio users (or those looking to use the command line), you
may create a project template in the current path with the following
function:

    islsdown::islsdown_skeleton("my-isls-paper")

Then, edit the `index.Rmd` file. More instructions on editing the
`index.Rmd` file are provided in the “Using the template (index.Rmd)”
section.

## Rendering a PDF (or gitbook or Word) document from the template

Render the template to a document by clicking the “Knit” button at the
top of the `index.Rmd` document.

The result should be a PDF document which appears like the document
below.

To render a document to *a different output type* (other than a PDF),
click the down arrow to the right of the “Knit” button, and select
either the gitbook or Word document format.

# To-Do List

-   [ ] Fully test `islsdown::isls_pdf()` format.
-   [ ] Customize `islsdown::isls_word()` format.
-   [ ] Update `README`.
-   [ ] Write a simple vignette.
-   [ ] Submit the package to CRAN.
-   [ ] Write tutorial proposal for ISLS 2021.
