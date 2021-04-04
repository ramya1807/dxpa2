[#if components?has_content]
  [#assign parentId = 'accordion-${content.@id}']

  <div class="accordion" id="${parentId}">
    [#list components as component]
      [#assign total = components?size]

      [@cms.component content=component contextAttributes={"groupManagement": ctx.groupManagement, "parentId": parentId} /]
    [/#list]
  </div>
[#elseif cmsfn.isEditMode()]
  This accordion is empty
[/#if]