Esta pequeña App busca diferenciar los statelessWidget de los stateful.

El stateless widget no puede automodificar sus atributos, sino el padre es quien puede definirselos. Pero el a su vez puede responder, es decir que puede tener funciones callback que al ocurrir un evento pueden disparar una funcion en el padre que le permite al padre luego cambiarle sus atributos si lo considera necesario.