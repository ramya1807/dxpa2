[#import "/btk/includes/templates/class.ftl" as utils]
[#include "/btk/includes/templates/css.ftl"]

[#if content.text?has_content]
  [#assign href = '#']

  [#if content.linkinternal?has_content]
    [#assign target = cmsfn.contentByPath(content.linkinternal)!]

    [#if target?has_content]
      [#assign href = cmsfn.link(target)]
    [/#if]
  [#elseif content.linkexternal?has_content]
    [#assign href = content.linkexternal]
  [/#if]

  <a class="${utils.getClassName('btn btn-${content.style!"primary"}')}" href="${href}">${content.text}</a>
[/#if]