[#if content.heading?has_content && content.body?has_content]
  [#assign itemId = 'item-${ctx.parentId}-${content.@id}']

  <div class="card">
    <div class="card-header">
      <h2 class="mb-0">
        <button
          class="btn btn-link"
          type="button"
          data-toggle="collapse"
          data-target="#${itemId}"
        >
          ${content.heading}
        </button>
      </h2>
    </div>
    <div
      id="${itemId}"
      class="collapse"
      [#if ctx.groupManagement]
        data-parent="#${ctx.parentId}"
      [/#if]
    >
      <div class="card-body">
        ${cmsfn.decode(content).body}
      </div>
    </div>
  </div>
[/#if]