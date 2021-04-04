[#assign columnCssClass = "col-sm"/]
[#assign columnWidth = content.columnWidth!"default"/]
[#if columnWidth != "default"]
    [#assign columnCssClass = columnCssClass + "-" + columnWidth /]
[/#if]
<div class="col-12 ${columnCssClass}">
    [#list components as component ]
        [@cms.component content=component /]
    [/#list]
</div>