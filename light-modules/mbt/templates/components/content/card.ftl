[#include "/mbt/templates/macros/linksSwitchable.ftl"]
[@assignLink content "linkType"/]

[#assign title = content.title!/]
[#assign text =  cmsfn.decode(content).text!/]
[#assign imgItemKey = content.image!/]
[#assign btnColor = content.buttonColor!"primary"/]
[#if imgItemKey?has_content]
    [#assign imgAsset = damfn.getAsset(imgItemKey)!/]
[/#if]
[#assign imagePosition = content.imagePosition!"top"/]
[#assign textColor = content.textColor!"default"/]
[#assign bgColor = content.bgColor!"default"/]
[#if textColor != "default"]
    [#assign textColorClass = "text-" + textColor!/]
[/#if]

[#if imgItemKey?has_content]
    [#assign asset = damfn.getAsset(imgItemKey)!]
    [#if asset?has_content]
        [#assign assetRend = damfn.getRendition(asset, "1600")/]
    [/#if]
[/#if]

<div class="card text-${content.alignment!"left"} ${(bgColor != "default")?then("bg-" + bgColor, "")}">
    [#if (imagePosition == "top") && asset?has_content]
        <img src="${imgAsset.getLink()}" class="card-img-${imagePosition} img-thumbnail" alt="${imgAsset.getTitle()}"/>
    [/#if]
    <div class="card-body ${textColorClass!}">
        <h2 class="card-text ">${title}</h2>
        <p class="card-text">${text}</p>
        [#if hrefValue?has_content]
            <a href="${hrefValue}" class="btn btn-${btnColor} btn-lg">${linkText!}</a>
        [/#if]
    </div>
    [#if imagePosition == "bottom" && assetRend?has_content]
        <img src="${assetRend.link}" class="card-img-${imagePosition} img-thumbnail" alt="${asset.title!}"/>
    [/#if]
</div>








