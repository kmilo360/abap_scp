@AbapCatalog.sqlViewName: 'ZV_LIBROS_0598'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Search.searchable: true
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@UI.headerInfo : { typeName : 'Libro',
                   typeNamePlural :  'Libros' ,
                   title : { type : #STANDARD,
                             value  : 'Titulo'},
                   description : { type : #STANDARD,
                                   value : 'Autor'},
                    imageUrl: 'Imagen'}
define view ZC_LIBROS_0598 
    as select from ztb_libros_0598 as LIBROS
    inner join ztb_catego_0598 as _CATEGO on LIBROS.bi_categ = _CATEGO.bi_categ
    left outer join ZC_CLNTS_LIB_0598 as ventas on LIBROS.id_libro = ventas.IdLibro
    association [0..*] to ZC_CLIENTES_0598 as Clientes on LIBROS.id_libro = Clientes.IdLibro
{
    key id_libro as IdLibro,
        titulo as Titulo,
        LIBROS.bi_categ as Bi_Categoria,
        autor as Autor,
        editorial as Editorial,
        idioma as Idioma,
        paginas as Paginas,
        @Semantics.amount.currencyCode: 'moneda'
        precio as Precio,
        case 
            when ventas.Ventas < 1 then 0
            when ventas.Ventas = 1 then 1
            when ventas.Ventas = 2 then 2
            when ventas.Ventas > 2 then 3
        else 0 
        end as Ventas,
        case ventas.Ventas
        when 0 then ''
        else ''
        end     as Text,
        @Semantics.currencyCode: true
        moneda as Moneda,
        formato as Formato,
        url as Imagen,
        Clientes
}
