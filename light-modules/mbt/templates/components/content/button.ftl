[#include "/mbt/templates/macros/linksSwitchable.ftl"]

[@assignLink content "linkType"/]
<style>
a.theme1{
    background-color: red;
}

a.theme2{
    background-color: blue;
}

a.theme3{
    background-color: green;
}
</style>

[#if hrefValue?has_content]
    <a class="btn btn-${content.buttonColor!} ${content.theme}" href="${hrefValue}" role="button">${linkText!"read more"}</a>
[/#if]