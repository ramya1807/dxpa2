[#import "/btk/includes/templates/class.ftl" as utils]
[#include "/btk/includes/templates/css.ftl"]

[#if content.text?has_content]
  <div class="${utils.getClassName()}">${cmsfn.decode(content).text}</div>
[/#if]