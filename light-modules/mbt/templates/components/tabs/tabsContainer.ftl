[#include "/mbt/templates/macros/commons.ftl"/]
[@assignSpacingAndBorders content/]
[#assign numberOftabs = content.numberOfTabs!2/]
[#assign navTag = "a"/]
[#if cmsfn.editMode]
    [#assign navTag = "span"/]
[/#if]
[#assign orientation = content.orientation!"horizontal"/]
[#assign isVertical = orientation == "vertical"/]

[#if cmsfn.editMode]
   <div cms:edit="bar"></div>
[/#if]

<div class="${content.containerWidth!"container"} mt-${marginTop} mb-${marginBottom}">
${borderTop?then("<hr/>","")}
[@renderTitleWithText content/]
<div class="row">
    <div class="${isVertical?then("col-3 flex-column", "col-12")}">
    <ul class="nav nav-${content.style} ${isVertical?then("flex-column", "")}" role="tablist">
        [#list 1..numberOftabs as columnIndex]
            [#assign isActive = columnIndex==1]

            <li class="nav-item">
            [#if content["tab" + columnIndex]?has_content]
                <${navTag} class="nav-link  ${isActive?then("active", "")}"  data-toggle="tab" href="#tab-${columnIndex}" role="tab" aria-controls="home" aria-selected="${isActive?then("true", "false")}">
                   ${content["tab" + columnIndex].title!("Tab Title - " + columnIndex)}
                </${navTag}>
            [#else]
                <${navTag} href="#tab-${columnIndex}" ${isActive?then("active", "")}>
                    Tab Title - ${columnIndex}
                </${navTag}>
            [/#if]
            </li>
        [/#list]
    </ul>
    </div>
    <div class="tab-content ${isVertical?then("col-9", "col-12")}">
        [#list 1..numberOftabs as columnIndex]
            <div class="tab-pane fade  [#if columnIndex==1]show active[/#if]" id="tab-${columnIndex}" role="tabpanel" aria-labelledby="home-tab">
                [@cms.area name="tab${columnIndex}"/]
            </div>
        [/#list]
    </div>
</div>
${borderBottom?then("<hr/>","")}
</div>