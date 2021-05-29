<#macro articleList posts>
    <ul>
        <#list posts.content as post>
            <div class="card is-marginless is-paddingless is-shadowless article-list">
                <div class="card-content is-paddingless article">
                    <div class="columns is-marginless is-paddingless is-mobile">
                        <div class="column is-3 clean-left-padding">
                            <div class="card-image">
                                <a href="${post.fullPath!}">
                                    <img class="thumbnail" src="${post.thumbnail!}" alt="${post.title!}">
                                </a>
                            </div>
                        </div>
                        <div class="column is-9 clean-right-padding">
                            <div class="level">
                                <h1 class="title is-size-4 is-size-4-mobile has-text-weight-bold is-marginless">
                                    <a class="has-link-black-ter" href="${post.fullPath!}">${post.title!}</a>
                                </h1>
                            </div>
                            <#-- 文章的基本信息 -->
                            <div class="level article-meta is-size-7 is-uppercase is-mobile">
                                <div class="level-left">
                                    <#if post.categories?? && post.categories?size gt 0>
                                        <div class="level-item buttons are-small">
                                            <#list post.categories as category>
                                                <a class="button is-primary is-outlined"
                                                   href="${category.fullPath!}">${category.name!}</a>&nbsp;
                                            </#list>
                                        </div>
                                    </#if>
                                </div>
                            </div>
                            <#-- 文章概要 -->
                            <#if post.summary?? && post.summary!=''>
                                <div class="content more-content">${post.summary!}</div>
                            </#if>
                            <div class="level level-left article-meta is-size-7 is-uppercase is-overflow-x-auto">
                                <#--						<span class="has-text-grey"><i class="fas fa-user mr-2"></i>&nbsp;&nbsp;${user.nickname!"博主"}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>-->
                                <time class="has-text-grey" datetime="${post.createTime!}"><i
                                            class="fas fa-calendar mr-2"></i>&nbsp;&nbsp;${post.createTime?string('yyyy-MM-dd
							HH:mm')}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </time>
                                <span class="has-text-grey"><i class="fas fa-eye mr-2"></i>&nbsp;&nbsp;${post.visits!}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                <span class="has-text-grey"><i
                                            class="fas fa-comments mr-2"></i>&nbsp;&nbsp;${post.commentCount}</span>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </#list>
    </ul>
</#macro>
