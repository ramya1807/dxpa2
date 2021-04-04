[#if components?has_content]
  [#assign total = components?size]
  [#assign parentId = 'carousel-${content.@id}']

  <div id="${parentId}" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      [#list 0..total-1 as i]
        <li data-target="#${parentId}" data-slide-to="${i}" class="${(i == 0)?then('active', '')}"></li>
      [/#list]    
    </ol>
    <div class="carousel-inner">
      [#list components as component]
        [@cms.component content=component contextAttributes={"index": component_index, "parentId": parentId} /]
      [/#list]
    </div>
    <a class="carousel-control-prev" href="#${parentId}" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#${parentId}" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
[#elseif cmsfn.isEditMode()]
  This carousel is empty
[/#if]