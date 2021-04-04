[#include "/mbt/templates/macros/commons.ftl"/]
[@assignSpacingAndBorders content/]
[#assign badgeText = content.badgeText!/]
[#assign headingLevel = content.headingType!"1"/]



<div class="${content.containerWidth!""} mt-${marginTop} mb-${marginBottom}">
${borderTop?then("<hr/>","")}
    [#if content.title?has_content]
        <div class="row text-${content.alignment!}">
            <h${headingLevel!} class="col-12">${content.title!}[#if badgeText?has_content]<span class="badge badge-${content.color!} ml-1">${badgeText!}</span>[/#if]</h${headingLevel!}>
            [#if content.text?has_content]<div class="col-12"> ${cmsfn.decode(content).text!}</div>[/#if]
        </div>
    [/#if]
${borderBottom?then("<hr/>","")}
</div>