Message Sequence Charts (PlantUML)
==================================

**Reading instructions:**

-   Be sure to understand [identity inheritance](http://internetwide.org/blog/2016/12/18/id-6-inheritance.html)

-   Have a look at the [middleware components](http://internetwide.org/blog/2016/12/20/idhub-2-middleware.html)

**Technical notes:**

-   Installed [PlantUML](http://plantuml.com/download) into
    \~/Library/plantuml.jar

-   Created a bash alias,

    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    umlproc() { java -jar ~/Library/plantuml.jar "$@" ; }
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-   The rest is a matter of Makefile bashing

-   Use it to draw [Sequence Diagrams](http://plantuml.com/sequence-diagram)

-   There is a [Reference
    Guide](http://plantuml.com/PlantUML_Language_Reference_Guide.pdf) in PDF for

-   Future: There is a [Pelican
    Plugin](https://github.com/getpelican/pelican-plugins/tree/master/plantuml)
