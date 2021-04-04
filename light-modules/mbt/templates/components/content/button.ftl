[#include "/mbt/templates/macros/linksSwitchable.ftl"]

[@assignLink content "linkType"/]
[#if hrefValue?has_content]
    <a class="btn btn-${content.buttonColor!}" href="${hrefValue}" role="button">${linkText!"read more"}</a>
[/#if]