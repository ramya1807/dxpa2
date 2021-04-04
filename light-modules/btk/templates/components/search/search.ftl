[#assign searchQuery = ctx.getParameter('searchQuery')!?html]
  <h1 class="mt-5">${i18n['components.search.header']}</h1>

  [#if searchQuery?has_content]
    <p>
      [#assign searchResults = searchfn.searchPages(searchQuery, "/"+cmsfn.root(content, "mgnl:page")!content) /]
      
      ${i18n['components.search.withQuery']} <strong>${searchQuery}</strong>

      [#if searchResults?has_content]
        <ol>
          [#list searchResults as searchResult]
            [#assign href = cmsfn.link(searchResult)]

            [#if href?has_content]
              <li>
                <strong>${searchResult.navigationTitle!searchResult.title!searchResult.@name!}</strong><br />
                <a href="${href}">${href}</a>
                [#if searchResult.excerpt?has_content]
                  <i>${searchResult.excerpt}</i>
                [/#if]
              </li>
            [/#if]
          [/#list]
        </ol>
      [#else]
        <p>
          ${i18n['components.search.noResults']}
        </p>
      [/#if]
    </p>
  [#else]
    <p>
      ${i18n['components.search.withoutQuery']}
    </p>
  [/#if]