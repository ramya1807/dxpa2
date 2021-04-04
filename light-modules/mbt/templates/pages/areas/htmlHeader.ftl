[#-------------- ASSIGNMENTS --------------]
[#-- Page's model & definition, based on the rendering hierarchy and not the node hierarchy --]
[#assign site = sitefn.site()!]
[#assign theme = sitefn.theme(site)!]
[#assign pageDef = ctx.pageDef!]


[#-------------- RENDERING --------------]
<title>${content.windowTitle!content.title!}</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="${content.description!""}" />
<meta name="keywords" content="${content.keywords!""}" />
<meta name="author" content="Magnolia International Ltd." />
<meta name="generator" content="Powered by Magnolia - Intuitive Opensource CMS" />






<link rel="stylesheet" type="text/css" href="${ctx.contextPath}/.resources/mbt/webresources/css/bootstrap.min.css"  />
<style>
    .nav-tabs.flex-column .nav-link.active{
        border-color: #dee2e6 #fff #dee2e6 #dee2e6;
    }
</style>
<script src="${ctx.contextPath}/.resources/mbt/webresources/js/jquery-3.3.1.slim.min.js"></script>
<script src="${ctx.contextPath}/.resources/mbt/webresources/js/popper.min.js"></script>
<script src="${ctx.contextPath}/.resources/mbt/webresources/js/bootstrap.min.js"></script>