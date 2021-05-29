<#import "./slider_list.ftl" as slider_list>
<#import "./slider_tag.ftl" as slider_tag>

<div class="card "
     style="transition: opacity 0.3s ease-out 0s, transform 0.3s ease-out 0s; opacity: 1; transform-origin: center top; margin-bottom: 10px;">
    <div class="article">
        <div class="columns is-marginless is-paddingless ">
            <div class="column is-6 is-clipped ">
                <div id="hwslider" class="hwslider">
                    <ul>
                        <@slider_list.sliderListMacro/>
                    </ul>
                </div>
            </div>
            <#--          	<@slider_tag.sliderTagMacro/>-->
            <div class="column is-6">
                <#list posts.content as post>
                    <#if post?index gt 4>
                        break
                    </#if>

                    <div class="level">
                        <div class="level-item">
                            <p class="content">${post.title}</p>
                        </div>
                        <div class="level-item has-text-grey">${post.createTime?string("MM-dd")}</div>
                    </div>
                </#list>
            </div>
        </div>
    </div>
</div>
