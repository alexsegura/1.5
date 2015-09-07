{$left_column_size = (isset($HOOK_LEFT_COLUMN) && !$hide_left_column) ? 3 : 0}
{$right_column_size = (isset($HOOK_RIGHT_COLUMN) && !$hide_right_column) ? 3 : 0}
{$center_column_size = (12 - $left_column_size - $right_column_size)}
<!DOCTYPE html>
<html{if isset($language_code)} lang="{$language_code}"{/if}>
  <head>
    {include "partials/head.tpl"}
  </head>
  <body>
    {if $content_only}
      {block "content"}{/block}
    {else}
    <div id="page">
      <div class="header-container">
      {include "partials/header.tpl"}
      </div>
      <div class="columns-container">
        <div id="columns" class="container">
          {if $page_name !='index' && $page_name !='pagenotfound'}
            {include file="partials/breadcrumb.tpl"}
          {/if}
          <div id="slider_row" class="row">
            {capture name='displayTopColumn'}{hook h='displayTopColumn'}{/capture}
            {if $smarty.capture.displayTopColumn}
              <div id="top_column" class="center_column col-xs-12 col-sm-12">{$smarty.capture.displayTopColumn}</div>
            {/if}
          </div>
          <div class="row">
            {if $left_column_size > 0}
            <div id="left_column" class="column col-xs-12 col-sm-{$left_column_size}">
              {$HOOK_LEFT_COLUMN}
            </div>
            {/if}
            <div id="center_column" class="center_column col-xs-12 col-sm-{$center_column_size}">
              {block "content"}{/block}
            </div>
            {if $right_column_size > 0}
            <div id="right_column" class="col-xs-12 col-sm-{$right_column_size} column">
              {$HOOK_RIGHT_COLUMN}
            </div>
            {/if}
          </div>
        </div>
      </div>
      {include "partials/footer.tpl"}
    </div>
    {/if}
    {include "partials/global.tpl"}
  </body>
</html>