[#include "/mbt/templates/macros/commons.ftl"/]
[@assignSpacingAndBorders content/]
[#assign text = cmsfn.decode(content).text!/]
[#assign title = content.title!/]
[#assign bgColor = content.bgColor!/]
[#assign linkColor = content.linkColor!"primary"]
[#assign imgItemKey = content.image!/]
[#include "/mbt/templates/macros/linksSwitchable.ftl"]

[@assignLink content "linkType"/]

[#if imgItemKey??]
  [#assign imgRef = damfn.getAssetLink(imgItemKey)!/]
[/#if]


<div class="${content.containerWidth!"container"}">
${borderTop?then("<hr/>","")}
<div class="jumbotron  text-center bg-${bgColor!} mt-${marginTop} mb-${marginBottom}">
  <h1 class="display-4">${title}</h1>
  <p class="lead">${text}</p>
  <hr class="my-4">
  <p></p>
  [#if hrefValue?has_content]
    <a class="btn btn-${linkColor} btn-lg" href="${hrefValue}" role="button">${linkText}</a>
  [/#if]
</div>
${borderBottom?then("<hr/>","")}

</div>