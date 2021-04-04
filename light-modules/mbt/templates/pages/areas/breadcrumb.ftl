[#assign ancestors = cmsfn.ancestors(content, "mgnl:page")]
<div class="${content.containerWidth!"container"}">
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
      [#list ancestors as page]
          [#assign linkPage = cmsfn.link(page)]
          <li class="breadcrumb-item"><a href="${linkPage}">${page.title!}</a></li>
      [/#list]
      <li class="breadcrumb-item">${content.title!}</li>
  </ol>
</nav>
</div>