<#include "layout/layout.ftl">
<#include 'layout/common/widget.ftl'>
<#include "layout/common/article.ftl">
<#include "layout/common/article-list.ftl">
<@layout type="index" title="${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}">
    <#if settings.slider_enable!true>
        <#include "./layout/widget/slider.ftl">
    </#if>

    <div class="columns">
        <div class="column is-8-tablet is-8-desktop is-9-widescreen has-order-2 column-main">
            <@articleList posts />

            <#if posts.getTotalPages() gt 0>
                <div class="card card-transparent">
                    <nav class="pagination is-centered" role="navigation" aria-label="pagination">
                        <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
                            <div class="pagination-previous<#if pagination.hasPrev><#else > is-invisible is-hidden-mobile</#if>">
                                <a class="is-flex-grow has-text-black-ter"
                                   href="${pagination.prevPageFullPath!}">上一页</a>
                            </div>
                            <div class="pagination-next<#if pagination.hasNext><#else > is-invisible is-hidden-mobile</#if>">
                                <a class="is-flex-grow has-text-black-ter"
                                   href="${pagination.nextPageFullPath!}">下一页</a>
                            </div>
                            <ul class="pagination-list is-hidden-mobile">
                                <#list pagination.rainbowPages as number>
                                    <#if number.isCurrent>
                                        <li><a class="pagination-link is-current"
                                               href="${number.fullPath!}">${number.page!}</a></li>
                                    <#else>
                                        <li><a class="pagination-link has-text-black-ter"
                                               href="${number.fullPath!}">${number.page!}</a></li>
                                    </#if>
                                </#list>
                            </ul>
                        </@paginationTag>
                    </nav>
                </div>
            </#if>
        </div>

        <@widget 'right','menuHide' />
    </div>
</@layout>
