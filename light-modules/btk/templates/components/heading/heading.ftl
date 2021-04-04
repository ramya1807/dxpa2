[#import "/btk/includes/templates/class.ftl" as utils]
[#include "/btk/includes/templates/css.ftl"]

[#if content.text?has_content]
  [#assign level = content.level!'1']
  
  <h${level} class="${utils.getClassName('mt-5')}">
    ${content.text}
  </h${level}>
[/#if]