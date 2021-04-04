[#global breadcrumb = []]

[#macro getPage page]
  [#global breadcrumb = breadcrumb + [page]]

  [#if cmsfn.parent(page)?has_content]
    [@getPage cmsfn.parent(page) /]
  [/#if]
[/#macro]

[@getPage cmsfn.page(content) /]

<nav class="mt-3">
  <ol class="breadcrumb">
    [#list breadcrumb?reverse as item]
      [#assign title = item.title!item.@name]

      [#if item != cmsfn.page(content)]
          <li class="breadcrumb-item">
            <a href="${cmsfn.link(item)!'#'}">${title}</a>
          </li>
      [#else]
        <li class="breadcrumb-item active" aria-current="page">${title}</li>
      [/#if]
    [/#list]
  </ol>
</nav>