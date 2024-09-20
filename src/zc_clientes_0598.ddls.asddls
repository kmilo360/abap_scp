@AbapCatalog.sqlViewName: 'ZV_CLIENTES_0598'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CLIENTES'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@UI.headerInfo : { typeName : 'Cliente',
                   title : { type : #STANDARD,
                             value  : 'NombreCompleto'},
                   description : { type : #STANDARD,
                                   value : 'IdCliente'},
                    imageUrl: 'Imagen'}
define view ZC_CLIENTES_0598 as select from ztb_clientes_059 as CLIENTES
       inner join  ztb_clnts_lib_05 as clnts on clnts.id_cliente = CLIENTES.id_cliente
{

    key id_libro as IdLibro,
    key CLIENTES.id_cliente as IdCliente,
    key tipo_acceso as Acceso,
        nombre as Nombre,
        apellidos as Apellidos,
        email as Email,
        url as Imagen,
        concat_with_space(nombre, apellidos, 1) as NombreCompleto
}
