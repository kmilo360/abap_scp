CLASS zcl_insert_data_0598 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
        INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_data_0598 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.


        DATA: lt_acc_categ TYPE TABLE OF ztb_acc_categ_05,
              lt_catego TYPE TABLE OF ztb_catego_0598,
              lt_clientes TYPE TABLE OF ztb_clientes_059,
              lt_clnts_lib TYPE TABLE OF ztb_clnts_lib_05,
              lt_libros TYPE TABLE OF ztb_libros_0598.
*------------------------------------------------------------------------------------------------------------
        lt_acc_categ = VALUE #( ( bi_categ ='A' tipo_acceso ='1' )
                                ( bi_categ ='B' tipo_acceso ='1' )
                                ( bi_categ ='C' tipo_acceso ='2' ) ).

        DELETE FROM ztb_acc_categ_05.
        INSERT ztb_acc_categ_05 FROM TABLE @lt_acc_categ.
        if sy-subrc eq 0.
            out->write( 'Insert ztb_acc_categ_05' ).
        ENDIF.
*------------------------------------------------------------------------------------------------------------
*------------------------------------------------------------------------------------------------------------
        lt_catego = VALUE #( ( bi_categ ='A' descripcion ='Deportes' )
                             ( bi_categ ='B' descripcion ='Comedia' )
                             ( bi_categ ='C' descripcion ='Terror' ) ).
        DELETE FROM ztb_catego_0598.
        INSERT ztb_catego_0598 FROM TABLE @lt_catego.
        if sy-subrc eq 0.
            out->write( 'Insert ztb_catego_0598' ).
        ENDIF.
*------------------------------------------------------------------------------------------------------------
*------------------------------------------------------------------------------------------------------------
        lt_clientes = VALUE #( ( id_cliente = '01' tipo_acceso = '1' nombre = 'Juan' apellidos = 'Osorio' email = 'josorio@gmail.com' url = 'https://www.youtube.com/' )
                               ( id_cliente = '02' tipo_acceso = '2' nombre = 'Andres' apellidos = 'Sarmiento' email = 'asarmiento@gmail.com' url = 'https://www.mercadolibre.com.co/' )
                               ( id_cliente = '03' tipo_acceso = '1' nombre = 'Camilo' apellidos = 'Valencia' email = 'cvalencia@gmail.com' url = 'https://www.amazon.com/' ) ).
        DELETE FROM ztb_clientes_059.
        INSERT ztb_clientes_059 FROM TABLE @lt_clientes.
        if sy-subrc eq 0.
            out->write( 'Insert ztb_clientes_059' ).
        ENDIF.
*------------------------------------------------------------------------------------------------------------
*------------------------------------------------------------------------------------------------------------
        lt_clnts_lib = VALUE #( ( id_cliente = '01' id_libro = '0001' )
                                ( id_cliente = '02' id_libro = '0002' )
                                ( id_cliente = '03' id_libro = '0003' ) ).
        DELETE FROM ztb_clnts_lib_05.
        INSERT ztb_clnts_lib_05 FROM TABLE @lt_clnts_lib.
        if sy-subrc eq 0.
            out->write( 'Insert ztb_clnts_lib_05' ).
        ENDIF.
*------------------------------------------------------------------------------------------------------------
*------------------------------------------------------------------------------------------------------------
        lt_libros = VALUE #( ( id_libro = '0001' bi_categ = 'A' titulo = 'Mundial del 98' autor = 'Renato' editorial = 'Edit Deportes' idioma = 'English' paginas = '600' precio = '120' moneda = 'USD' formato = 'Digital' url =
'https://urbanian.mundodeportivo.com/p/b628/102546_8_libros_que_todo_amante_del_deporte_deberia_leer.jpg?cb=5054549' )
                             ( id_libro = '0002' bi_categ = 'B' titulo = 'Sonrie muequito' autor = 'Franco' editorial = 'Edit Comedia' idioma = 'Spanish' paginas = '358' precio = '80' moneda = 'USD' formato = 'Digital' url =
'https://infolibros.org/wp-content/uploads/2020/11/Libros-de-comedia.jpg?ezimgfmt=ng%3Awebp%2Fngcb33%2Frs%3Adevice%2Frscb33-1' )
                             ( id_libro = '0003' bi_categ = 'C' titulo = 'Pesadilla Mortal' autor = 'Rauch' editorial = 'Edit Terror' idioma = 'Japanese' paginas = '746' precio = '6000' moneda = 'COP' formato = 'Digital' url =
'https://cdn.milenio.com/uploads/media/2021/11/02/libros-de-terror-para-halloween.jpeg' ) ).
        DELETE FROM ztb_libros_0598.
        INSERT ztb_libros_0598 FROM TABLE @lt_libros.

        if sy-subrc eq 0.
            out->write( 'Insert ztb_libros_0598' ).
        ENDIF.
*------------------------------------------------------------------------------------------------------------
*------------------------------------------------------------------------------------------------------------



  ENDMETHOD.
ENDCLASS.
