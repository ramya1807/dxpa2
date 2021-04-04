[#if ctx.showInd!false]
    <ol class="carousel-indicators">
        [#list components as component]
            <li data-target="#carouselExampleCaptions" data-slide-to="${component_index}"[#if component_index == 0] class="active"[/#if] ></li>
        [/#list]
    </ol>
[/#if]
<div class="carousel-inner">
    [#list components as component]
        <div class="carousel-item [#if component_index == 0]active[/#if]">
            [@cms.component content=component /]
        </div>
    [/#list]
</div>
[#if ctx.showControls!false]
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
[/#if]
