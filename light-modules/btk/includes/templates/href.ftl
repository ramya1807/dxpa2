[#assign href = '#']

[#if content.linkinternal?has_content]
  [#assign target = cmsfn.contentByPath(content.linkinternal)!]

  [#if target?has_content]
    [#assign href = cmsfn.link(target)]
  [/#if]
[#elseif content.linkexternal?has_content]
  [#assign href = content.linkexternal]
[/#if]