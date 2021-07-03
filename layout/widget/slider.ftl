<#import "./slider_list.ftl" as slider_list>
<#import "./slider_tag.ftl" as slider_tag>

<div class="card "
     style="transition: opacity 0.3s ease-out 0s, transform 0.3s ease-out 0s; opacity: 1; transform-origin: center top; margin-bottom: 10px;">
    <div class="article">
        <div class="columns is-marginless is-paddingless ">
            <div class="column is-4 is-clipped ">
                <div id="hwslider" class="hwslider">
                    <ul>
                        <@slider_list.sliderListMacro/>
                    </ul>
                </div>
            </div>
                      	<@slider_tag.sliderTagMacro/>
            <div class="column is-5 is-hidden-mobile">
                <#list posts.content as post>
                    <#if post?index gt 10>
                        <#break>
                    </#if>

                        <div class="columns mb-0">
                            <div class="column is-10">
                                <div class="">
                                    <a href="${post.fullPath!}"><div class="has-link-black-ter ellipsis">${post.title}</div></a>
                                </div>
                            </div>
                            <div class="column is-2">
                                <div class="level-item has-text-grey level-center">${post.createTime?string("MM-dd")}</div>

                            </div>
                        </div>
                </#list>
            </div>
        </div>
    </div>
</div>
