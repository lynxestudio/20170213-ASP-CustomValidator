# Usando los controles de validación ASP.NET V (CustomValidator)

Hay ocasiones en que tenemos que comparar las entradas de los formularios con ciertos patrones que son demasiado complejos que requieren ciertas operaciones adicionales a las proporcionadas por los controles de validación predeterminados, existe también la posibilidad de usar métodos de validación previamente creadas con algún lenguaje de programación Script del lado del cliente, para estos casos .NET proporciona el control CustomValidator el cual nos permite usar funciones personalizadas tanto del lado del cliente como del lado del servidor.

Este control puede emplearse tanto del lado del servidor (Server-side) como del lado del cliente (Client-side). Para mostrar su utilización escribí dos ejemplos el primero compara las entradas del lado del servidor y el segundo hace las mismas comparaciones del lado del cliente.

Validando del lado del servidor (Server side)
El primer ejemplo muestra la utilización de este control del lado del servidor (server-side).

Fig 1. El código del control CustomValidator del lado del servidor.



Fig 2. El programa con el control CustomValidator en ejecucción.



Fig 3. El programa ejecutando las validaciones correspondientes.



Fig 4. Las validaciones requeridas fueron correctas.



Validando del lado del cliente (Client side)
El segundo ejemplo muestra las validaciones del lado del cliente (client-side), para este ejemplo es importante escribir antes que nada las funciones en JavaScript que servirán para hacer la validación, y que se utilizan en la propiedad ClientValidationFunction.

Fig 5. Las funciones JavaScript que efectuán la validación.



Fig 6. El código del control CustomValidator del lado del cliente.



Fig 7. El programa ejecutando una de las validaciones.



Fig 8. El programa ejecutando ambas validaciones.



Fig 9. El programa muestra un popup indicando que las validaciones son correctas.



Fig 10. El programa muestra un mensaje indicando que las validaciones son correctas.



La siguiente tabla muestra algunas propiedades del control.

Display	
Esta propiedad tiene 3 valores

Static: es la propiedad predeterminada, reserva un espacio suficiente en la página para mostrar el mensaje de error.
Dynamic: el espacio para mostrar el mensaje no se reserva, cuando el mensaje se despliega se desplaza el contenido existente en la página.
None: el mensaje no será desplegado en el lugar del control sino en el control ValidationSummary si se localiza en la misma página.
Errormessage	
El texto del mensaje de error del control.

ControlToValidate	
El control de donde obtendremos el valor para validar.

ClientValidationFunction	
La función script del lado del cliente con la cual haremos la operación sobre el valor del control a validar.

OnServerValidate	
El método del lado del servidor que tiene la operación que realizaremos con el valor del control

Download el código fuente (Server-side)
Download el código fuente (Client-side)
