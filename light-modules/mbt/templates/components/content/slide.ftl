[#assign imgItemKey = content.image!]
[#assign text = content.text!/]
[#assign title = content.title!/]
[#assign titleBgColor = content.titleBgColor!/]
[#assign textBgColor = content.textBgColor!/]
[#assign titleColor = content.titleColor!/]
[#assign textColor = content.textColor!/]
[#function getCSSColorClass pref color]
    [#if color?has_content && color!="default"]
        [#return pref + color/]
    [/#if]
    [#return ""/]
[/#function]
[#if imgItemKey??]
    [#assign asset = damfn.getAsset(imgItemKey)!]
    [#if asset??]
        [#assign assetRend = damfn.getRendition(asset, "2400x750")/]
      <img class="d-block img-fluid" src="${assetRend.link}" alt=" ${asset.title!}">
    [/#if]
[/#if]
    <div class="carousel-caption d-none d-md-block">
        <h5 class="${getCSSColorClass("text-" titleColor)} ${getCSSColorClass("bg-" titleBgColor)} py-3">${title!}</h5>
        <p class="${getCSSColorClass("text-" textColor)} ${getCSSColorClass("bg-" textBgColor)} py-3">${text!} ${textColor}</p>
     </div>


   