<div class="jumbotron">
  <div class="container">
    [#if content.title?has_content]
      <h1 class="display-4">${content.title}</h1>
    [/#if]

    [#if content.lead?has_content]
      <p class="lead">${content.lead}</p>
    [/#if]

    [#if content.btnText?has_content]
      [#include "/btk/includes/templates/href.ftl"]

      <a class="btn btn-primary btn-lg" href="${href}">${content.btnText}</a>
    [/#if]
  </div>
</div>