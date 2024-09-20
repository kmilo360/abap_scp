@AbapCatalog.sqlViewName: 'ZV_CATEGO_0598'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CATEGORIAS'
@Metadata.ignorePropagatedAnnotations: true
define view ZC_CATEGORIAS_0598 as select from ztb_catego_0598
{
    key bi_categ as BiCateg,
        descripcion as Descripcion
}
