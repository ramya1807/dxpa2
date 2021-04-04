[#assign rootPage = navfn.rootPage(content)]
[#assign searchPage = '']

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
  <a class="navbar-brand" href="${navfn.link(rootPage)}">${rootPage.pageTitle!rootPage.@name}</a>
  <button
    class="navbar-toggler"
    type="button"
    data-toggle="collapse"
    data-target="#navigation"
    aria-controls="navigation"
    aria-expanded="false"
  >
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navigation">
    <ul class="navbar-nav mr-auto">
      [#assign navItems = navfn.navItems(rootPage)]

      [#if navItems?size > 0]
        [#list navItems as navItem]
          [#if cmsfn.metaData(navItem, 'mgnl:template') == 'btk:pages/search']
            [#assign searchPage = navItem]
            [#break]
          [/#if]

          [#assign navItemsName = navItem.navTitle!navItem.@name]
          [#assign navItemsNested = navfn.navItems(navItem)]
          [#assign isActive = false]

          [#if navItem == cmsfn.page(content)]
              [#assign isActive = true]
          [/#if]

          [#if navItemsNested?size > 0]
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle ${isActive?then('active', '')}" href="#" data-toggle="dropdown">${navItemsName}</a>
              <div class="dropdown-menu">
                <a class="dropdown-item font-weight-bold" href="${navfn.link(navItem)}">${navItemsName}</a>
                [#list navItemsNested as navItemNested]
                  <a class="dropdown-item" href="${navfn.link(navItemNested)}">${navItemNested.navTitle!navItemNested.@name}</a>
                [/#list]
              </div>
            </li>
          [#else]
            <li class="nav-item ${isActive?then('active', '')}">
              <a class="nav-link" href="${navfn.link(navItem)}">${navItemsName}</a>
            </li>
          [/#if]
        [/#list]
      [/#if]
    </ul>

    [#if searchPage?has_content]
      [#assign searchQuery = ctx.getParameter('searchQuery')!?html]
      
      <form class="form-inline my-2 my-lg-0" action="${cmsfn.link(searchPage)}">
        <input name="searchQuery" class="form-control mr-sm-2" type="text" placeholder="${i18n['components.search.placeholder']}" />
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">${i18n['components.search.submit']}</button>
      </form>
    [/#if]
  </div>
</nav>
