[#include "/mbt/templates/macros/commons.ftl"/]
[@assignSpacingAndBorders content/]

[#assign columns = content.numberOfColumns?number/]

<div class="${content.containerWidth!"container"} mt-${marginTop} mb-${marginBottom}" >
${borderTop?then("<hr/>","")}
    <div class="row">
        [#list 1..columns as columnIndex]
            [@cms.area name="column${columnIndex}"/]
        [/#list]
    </div>
${borderBottom?then("<hr/>","")}
</div>