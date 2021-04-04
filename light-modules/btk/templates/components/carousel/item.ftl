[#if content.heading?has_content && content.body?has_content]
  [#assign class = 'carousel-item']

  [#if ctx.index == 0]
    [#assign class += ' active']
  [/#if]
  <div class="${class}">
    [#if content.image?has_content]
      [#assign src = damfn.getAssetLink(content.image)]

      [#if src?has_content]
        [#assign asset = damfn.getAsset(content.image)]
        [#assign assetMap = damfn.getAssetMap(asset)]
        [#assign alt = assetMap.title!assetMap.name!assetMap.@name]

        <img src="${src}" alt="${alt}">
      [/#if]
    [/#if]
    <div class="container">
      <div class="carousel-caption text-left">
        <h1>${content.heading}</h1>
        <p>${cmsfn.decode(content).body}</p>
        [#if content.btnText?has_content]
          [#include "/btk/includes/templates/href.ftl"]

          <a class="btn btn-primary btn-lg" href="${href}">${content.btnText}</a>
        [/#if]
      </div>
    </div>
  </div>
[/#if]