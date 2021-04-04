[#if components?has_content ]
  [#assign total = components?size]

  [#list components as component]
    [#assign has_next = (total == (component_index + 1))?then(false, true)]

    [@cms.component content=component contextAttributes={"index": component_index, "total": total, "parity": (component_index % 2 == 0)?string("even","odd"), "has_next": has_next} /]
  [/#list]
[#elseif cmsfn.isEditMode()]
  This area is empty
[/#if]