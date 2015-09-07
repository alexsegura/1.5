{extends "{$layout}"}

{block "content"}
{capture name=path}{l s='Top sellers'}{/capture}
<h1 class="page-heading product-listing">{l s='Top sellers'}</h1>
{if $products}
  <div class="content_sortPagiBar">
    <div class="sortPagiBar clearfix">
      {include file="partials/product-sort.tpl"}
      {include file="partials/nbr-product-page.tpl"}
    </div>
    <div class="top-pagination-content clearfix">
      {include file="partials/product-compare.tpl"}
      {include file="partials/pagination.tpl"}
    </div>
  </div>

  {include file="product-list.tpl" products=$products}

  <div class="content_sortPagiBar">
    <div class="bottom-pagination-content clearfix">
      {include file="partials/product-compare.tpl"}
      {include file="partials/pagination.tpl" paginationId='bottom'}
    </div>
  </div>
  {else}
  <p class="alert alert-warning">{l s='No top sellers for the moment.'}</p>
{/if}
{/block}
