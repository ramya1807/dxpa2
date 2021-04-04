[#import "/btk/includes/templates/class.ftl" as utils]
[#include "/btk/includes/templates/css.ftl"]

[#assign colWidths = ['12']]

[#if colWidths?has_content]
  [#assign colWidths = content.layout?split(' ')]
[/#if]

<div>
  <div class="${utils.getClassName('row')}">
    [#list colWidths as colWidth]
  
      <div class="col-md-${colWidth}">
        [@cms.area name="col-${colWidth?index + 1}" /]
      </div>
      
    [/#list]
  </div>
</div>