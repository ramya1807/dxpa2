[#import "/btk/includes/templates/class.ftl" as utils]
[#include "/btk/includes/templates/css.ftl"]

[#if content.image?has_content]
  [#assign src = damfn.getAssetLink(content.image)]

  [#if src?has_content]
    [#assign asset = damfn.getAsset(content.image)]
    [#assign assetMap = damfn.getAssetMap(asset)]
    [#assign alt = assetMap.title!assetMap.name!assetMap.@name]
    [#assign class = 'img-fluid']

    [#if content.style?has_content && content.style != 'none']
      [#assign class += ' ${content.style}']
    [/#if]

    <img class="${utils.getClassName(class)}" src="${src}" alt="${alt}">
  [/#if]
[/#if]