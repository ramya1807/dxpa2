[#include "/mbt/templates/macros/commons.ftl"/]
[@assignSpacingAndBorders content/]
[#assign uniqueID = "u-" + content.@uuid!/]





<div class="${content.containerWidth!""} mt-${marginTop} mb-${marginBottom}">
    ${borderTop?then("<hr/>","")}
    [@renderTitleWithText content/]
    <div class="accordion" id="${uniqueID}">
        [@cms.area name="accordions"/]
    </div>
    ${borderBottom?then("<hr/>","")}
</div>