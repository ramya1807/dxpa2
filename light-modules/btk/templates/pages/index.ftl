<!doctype html>
<html lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    ${resfn.css("/btk/webresources/css/.*.css")}
    
    <title>${content.windowTitle!content.pageTitle!content.@name}</title>

    [#if content.description?has_content]
      <meta name="description" content="${content.description}" />
    [/#if]

    [#if content.keywords?has_content]
      <meta name="keywords" content="${content.keywords}" />
    [/#if]
  </head>
  <body>
    [#include "/btk/templates/areas/nav.ftl"]
    
    [@cms.area name="header" /]

    <div class="container">
      [@cms.area name="breadcrumb" /]
      [@cms.area name="main" /]

      <hr />
      <footer>
        [@cms.area name="footer" /]
      </footer>
    </div>

    ${resfn.js("/btk/webresources/js/.*.js")}
  </body>
</html>