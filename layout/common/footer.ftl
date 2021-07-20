<footer class="footer">
    <div class="container">
        <div class="level">
            <div class="level-item has-text-centered-mobile">
                <a class="footer-logo is-block has-mb-6" href="${context!}">
                    <#if options.blog_logo?? && options.blog_logo!=''>
                        <img src="${options.blog_logo!}" alt="${options.blog_title!}" height="28">
                    <#else>
                        ${options.blog_title!}
                    </#if>
                </a>
                <p class="is-size-7">
                    Copyright&nbsp;&copy; ${.now?string('yyyy')} ${options.blog_title!}&nbsp;
                  	<#--  ${user.nickname!}&nbsp;  -->
                    <br />
<#--                  	Thank for-->
<#--                    <a href="https://mumusur.com/" target="_blank">Halo</a> & <a-->
<#--                            href="https://github.com/halo-dev/halo-theme-icarus" target="_blank">Icarus</a>-->
<#--                    <br />-->
                    <@global.footer />
                </p>
            </div>
            <div class="level-end">
                <div class="field has-addons is-flex-center-mobile has-mt-5-mobile is-flex-wrap is-flex-middle">
                    ${settings.links_footer!}
                </div>
            </div>
        </div>
        <div class="level-item has-text-centered-mobile">
            本网站由<a href="https://www.upyun.com/?utm_source=lianmeng&utm_medium=referral"><img src="https://z3.ax1x.com/2021/07/15/WeqnvF.png" style="height: 24px;"></a>提供CDN加速/云存储服务
        </div>
    </div>
</footer>


<!-- 点击过滤 弹出抽屉 -->
<div id="sq_drawer">
  	<span class="column has-text-centered has-text-primary" >
    	<i class="fa fa-times-circle fa-2x " onclick="close_user_info()"></i>
  	</span>
	<#if settings.sidebar_profile!true>
    	<#include "../widget/profile.ftl">
	</#if>
</div>
