{extends "{$layout}"}

{block "content"}
{capture name=path}{l s='New products'}{/capture}
<h1 class="page-heading product-listing">{l s='New products'}</h1>
{if $products}
<div class="content_sortPagiBar">
  <div class="sortPagiBar clearfix">
    {include file="partials/product-sort.tpl"}
    {include file="partials/nbr-product-page.tpl"}
  </div>
  <div class="top-pagination-content clearfix">
    {include file="partials/product-compare.tpl"}
    {include file="partials/pagination.tpl" no_follow=1}
  </div>
</div>

{include file="product-list.tpl" products=$products}

<div class="content_sortPagiBar">
  <div class="bottom-pagination-content clearfix">
    {include file="partials/product-compare.tpl"}
    {include file="partials/pagination.tpl" no_follow=1 paginationId='bottom'}
  </div>
</div>
{else}
<p class="alert alert-warning">{l s='No new products.'}</p>
{/if}
{/block}