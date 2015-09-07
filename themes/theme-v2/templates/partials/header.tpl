<header id="header">
{capture name='displayBanner'}{hook h='displayBanner'}{/capture}
{if $smarty.capture.displayBanner}
  <div class="banner">
    <div class="container">
      <div class="row">
        {$smarty.capture.displayBanner}
      </div>
    </div>
  </div>
{/if}
{capture name='displayNav'}{hook h='displayNav'}{/capture}
{if $smarty.capture.displayNav}
  <div class="nav">
    <div class="container">
      <div class="row">
        <nav>{$smarty.capture.displayNav}</nav>
      </div>
    </div>
  </div>
{/if}
<div>
  <div class="container">
    <div class="row">
      <div id="header_logo">
        <a href="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}" title="{$shop_name|escape:'html':'UTF-8'}">
          <img class="logo img-responsive" src="{$logo_url}" alt="{$shop_name|escape:'html':'UTF-8'}"{if isset($logo_image_width) && $logo_image_width} width="{$logo_image_width}"{/if}{if isset($logo_image_height) && $logo_image_height} height="{$logo_image_height}"{/if}/>
        </a>
      </div>
      {if isset($HOOK_TOP)}{$HOOK_TOP}{/if}
    </div>
  </div>
</div>
</header>
