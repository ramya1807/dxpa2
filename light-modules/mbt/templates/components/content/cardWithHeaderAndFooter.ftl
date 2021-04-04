[#include "/mbt/templates/macros/commons.ftl"/]
[@assignSpacingAndBorders content/]
[#assign paraText =  cmsfn.decode(content).text!/]
[#assign alignment = content.alignment!""/]
[#assign alignmentBody = content.alignmentBody!""/]
[#assign alignmentFooter = content.alignmentFooter!""/]
[#include "/mbt/templates/macros/linksSwitchable.ftl"]

[@assignLink content "linkType"/]



<div class="card  mt-${marginTop} mb-${marginBottom}">
    [#if content.headerText?has_content]
        <div class="card-header text-${alignment} ">
        ${content.headerText!}
        </div>
    [/#if]
    <div class="card-body text-${alignmentBody} ">
        <h5 class="card-title">${content.titleOne!}</h5>
        <p class="card-text">${paraText!}</p>
        [#if hrefValue?has_content]
        <a href="${hrefValue}" class="btn btn-${content.color!}">${linkText}</a>
        [/#if]
    </div>
    [#if content.footerText?has_content]
    <div class="card-footer text-muted text-${alignmentFooter} ">
       ${content.footerText!}
    </div>
    [/#if]
</div>