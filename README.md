# METADABA-Template

This is a basic directory structure for developing Quarto based Preparatory Labs for Metropolitan College

Please install the following before running the code:

1. Python 3.10 or higher - more information [Python](https://www.python.org/)
2. R 4.3.0 or higher - more information [R](https://www.r-project.org/)
3. Quarto 1.6.33 - more information [Quarto](https://quarto.org/docs/download/)
4. `Quarto`, `radian`, `jupyter`, and `rpy2` python packages. You can install them by running the following command in your terminal:
5. *Although not needed for graphing and other advanced features you can also install*
   1. Node.js - more information [Node.js](https://nodejs.org/en/)
   2. Pandoc - more information [Pandoc](https://pandoc.org/)
   3. LaTeX - more information [LaTeX](https://www.latex-project.org/)
   4. Git - more information [Git](https://git-scm.com/)
   5. RStudio - more information [RStudio](https://www.rstudio.com/)
   6. Anaconda - more information [Anaconda](https://www.anaconda.com/)
   7. Jupyter - more information [Jupyter](https://jupyter.org/)
   8. Graphviz - more information [Graphviz](https://graphviz.org/)

```{bash}
pip install numpy pandas matplotlib seaborn jupyter quarto radian rpy2
```

1. `quarto`, `rmarkdown`, `reticulate`, `tidyverse`, `ggplot2`, `dplyr`, `readr`, `readxl`, `stringr`, `forcats`, `lubridate`, `janitor`, `skimr`, `kableExtra`, `knitr`, `kableExtra`, `ggplot2`, `plotly`, `ggrepel`, `ggpubr`, `ggthemes`, `ggsci`, `ggbeeswarm`, `ggrepel`, `ggforce`, `gganimate`, `ggtext`, `ggdist`, `ggpattern`, `ggpointdensity`, `gghighlight`, `ggrepel`, `ggtext`, `ggforce`, `gganimate`, `ggpattern`, `ggpointdensity`, `gghighlight`, `ggdist`, `ggsci`, `ggthemes`, `ggpubr`, `ggbeeswarm` for R. You can install them by running the following command in your R console:

```{r}
install.packages(c("quarto", "rmarkdown", "reticulate", "tidyverse", "ggplot2", "dplyr", "readr", "readxl", "stringr", "forcats", "lubridate", "janitor", "skimr",
 "kableExtra", "knitr", "kableExtra", "ggplot2", "plotly", "ggrepel", "ggpubr", "ggthemes", "ggsci", "ggbeeswarm", "ggrepel", "ggforce", "gganimate",
  "ggtext", "ggdist", "ggpattern", "ggpointdensity", "gghighlight", "ggrepel", "ggtext", "ggforce", "gganimate", 
  "ggpattern", "ggpointdensity", "gghighlight", "ggdist", "ggsci", "ggthemes", "ggpubr", "ggbeeswarm"))
```

6. With the above packages installed, you can now run the following command in your terminal to install the `quarto-webr` package. It might require node.js to be installed on your system. Quato web-r - more information [Quarto-WebR](https://github.com/coatless/quarto-webr)

```{bash}
quarto add coatless/quarto-webr
```

7. Interactive python need to be also added to the quarto environment. You can do this by running the following command in your terminal - [pyodide](https://github.com/coatless-quarto/pyodide)

```{bash}
quarto add coatless-quarto/pyodide
```

8. Interactive sql need to be also added to the quarto environment. You can do this by running the following command in your terminal - [sql.js](https://github.com/shafayetShafee/interactive-sql)

```{bash}
quarto add shafayetShafee/interactive-sql
```
