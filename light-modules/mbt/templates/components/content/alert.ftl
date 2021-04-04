[#--assignment--]
[#include "/mbt/templates/macros/commons.ftl"/]
[@assignSpacingAndBorders content/]
[#assign text = cmsfn.decode(content).text!/]
[#assign alertType = content.color!"primary"/]
[#assign alignment = content.alignment!""/]
[#assign showDismiss = content.showDismiss!false/]

[#--rendering--]
${borderTop?then("<hr/>","")}
[#if text?has_content]
    <div class="alert alert-${alertType} text-${alignment} mt-${marginTop} mb-${marginBottom}" role="alert">
        [#if showDismiss]
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        [/#if]
        ${text}
    </div>

[/#if]
${borderBottom?then("<hr/>","")}