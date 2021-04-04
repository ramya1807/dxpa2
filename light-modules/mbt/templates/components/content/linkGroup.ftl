[#include "/mbt/templates/macros/commons.ftl"/]
[@assignSpacingAndBorders content/]


<div class="${content.containerWidth!""} mt-${marginTop} mb-${marginBottom}">
    [@renderTitleWithText content/]
    <div class="list-group text-left">
        [@cms.area name="links"/]
    </div>
</div>