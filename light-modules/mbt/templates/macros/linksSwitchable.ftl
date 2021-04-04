[#macro assignLink content propName]
[#assign linkType = content[propName]!/]
[#assign hrefValue = ""/]
[#assign target = ""/]
[#assign linkText = content.linkText!]


[#if linkType == "page"]
    [#assign propNameForPageId = propName +  "page"]
    [#assign targetPage =  cmsfn.contentById(content[propNameForPageId])! /]
    [#if targetPage?has_content]
        [#if !linkText?has_content]
            [#assign linkText = targetPage.title!]
        [/#if]
        [#assign hrefValue = cmsfn.link(targetPage)/]

    [/#if]

[#elseif linkType == "external"]
    [#assign propNameForExternalLink = propName +  "external"]
    [#assign hrefValue = content[propNameForExternalLink] /]

[#elseif linkType == "download"]
    [#assign propNameForDownloadLink = propName +  "download"]
    [#assign asset = damfn.getAsset(content[propNameForDownloadLink])]
    [#if asset?has_content]
       [#assign hrefValue = asset.link! /]
    [/#if]
[/#if]

[#if !linkText?has_content]
    [#assign linkText = "Read more"]
[/#if]
[/#macro]