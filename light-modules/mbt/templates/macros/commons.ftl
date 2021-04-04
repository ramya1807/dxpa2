[#macro renderTitleWithText content]
    [#assign headingLevel = content.headingType!"1"/]
    [#if content.title?has_content]
    <div class="row text-${content.alignment!}">
        <h${headingLevel!} class="col-12">${content.title!}</h${headingLevel!}>
        [#if content.text?has_content]<div class="col-12"> ${cmsfn.decode(content).text!}</div>[/#if]
    </div>
    [/#if]
[/#macro]

[#macro assignSpacingAndBorders content]
    [#assign marginBottom = content.marginBottom!"3"]
    [#assign marginTop = content.marginTop!"3"]
    [#assign borderTop = content.borderTop!false/]
    [#assign borderBottom = content.borderBottom!false/]
[/#macro]