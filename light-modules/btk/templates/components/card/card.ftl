[#import "/btk/includes/templates/class.ftl" as utils]
[#include "/btk/includes/templates/css.ftl"]

<div class="${utils.getClassName('card')}">
  [#if content.image?has_content]
    [#assign src = damfn.getAssetLink(content.image)]

    [#if src?has_content]
      [#assign asset = damfn.getAsset(content.image)]
      [#assign assetMap = damfn.getAssetMap(asset)]
      [#assign alt = assetMap.title!assetMap.name!assetMap.@name]

      <img class="card-img-top" src="${src}" alt="${alt}">
    [/#if]
  [/#if]

  [#if content.heading?has_content && content.body?has_content]
    <div class="card-body">
      <h5 class="card-title">${content.heading}</h5>
      <p class="card-text">${cmsfn.decode(content).body}</p>

      [#if content.btnText?has_content]
        [#include "/btk/includes/templates/href.ftl"]

        <a class="btn btn-primary" href="${href}">${content.btnText}</a>
      [/#if]
    </div>
  [/#if]
</div>