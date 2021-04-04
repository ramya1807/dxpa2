[#assign title = content.title!/]
[#assign text = cmsfn.decode(content).text!/]

<div class="card">
    <a class="card-header" id="ua-${content.@uuid}" href="javascript:void(0)">
        <h2 class="btn btn btn-block text-left " data-toggle="collapse" data-target="#u${content.@uuid}"
            aria-expanded="true" aria-controls="u${content.@uuid}">${title}</h2>
    </a>

    <div id="u${content.@uuid}" class="collapse " aria-labelledby="ua-${content.@uuid}" data-parent="#u-${cmsfn.parent(cmsfn.parent(content)).@uuid}">
        <div class="card-body">${text}</div>
    </div>
</div>