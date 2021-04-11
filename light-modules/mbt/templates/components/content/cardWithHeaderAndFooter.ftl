[#include "/mbt/templates/macros/commons.ftl"/]
[@assignSpacingAndBorders content/]
[#assign paraText =  cmsfn.decode(content).text!/]
[#assign alignment = content.alignment!""/]
[#assign alignmentBody = content.alignmentBody!""/]
[#assign alignmentFooter = content.alignmentFooter!""/]
[#include "/mbt/templates/macros/linksSwitchable.ftl"]

[@assignLink content "linkType"/]
<style>

/* CEO Card */
div.theme1{
position: absolute;
width: 556px;
height: 265px;
left: 102px;
top: 1391px;
}

/* Rectangle 9 */
.theme1 > div{
position: absolute;
width: 556px;
height: 265px;
left: 102px;
top: 1391px;
background: #EDEDED;
border-radius: 40px;
}

/* Sundar Pichai */
.theme1 > h5{
position: absolute;
width: 250px;
height: 48px;
left: 135px;
top: 1434px;
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 30px;
line-height: 40px;

/* or 133% */

letter-spacing: 0.05em;
color: #7A8FFF;
}


/* “Wear your failures as a badge of honor.” */
.theme1 > p{
position: absolute;
width: 290px;
height: 87px;
left: 135px;
top: 1546px;
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 18px;
line-height: 30px;

/* or 167% */

letter-spacing: 0.05em;
color: #9D9D9D;
}
</style>



<div class="card  mt-${marginTop} mb-${marginBottom}">

    [#if content.headerText?has_content]
    <div class="${content.theme}">
        ${content.theme}
    </div>
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