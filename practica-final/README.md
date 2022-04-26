# Práctica final

En esta práctica final, vamos a crear ir un paso más allá que durante el curso y vamos a implementar una (Virtual Private Cloud) VPC en AWS desde 0. Durante el curso, hemos usado la VPC de Amazon por defecto, pero en esta práctica final vamos a crear una VPC propia.

## Objetivos

1. Crear una VPC con una _subnet_ pública y una _subnet_ privada.
2. Desplegar 2 instancias de Amazon Linux 2 en la _subnet_ privada.
3. Configurar las 2 instancias para que se pueda acceder a ella por SSH (para ello, vamos a usar una _key pair_).
4. Desplegar un _frontend_ en las instancias, de la manera que mejor se adapte a vosotros.
5. Crear un Load Balancer en la _subnet_ pública que pueda balancear las conexiones entre las instancias.
6. **Las instancias deben ser accessibles SOLO por el Load Balancer.**



### Referencias

Si quieres ir un paso mas allá, puedes consultar el blog de Ben Whaley en [Reference Architecture Blog](https://www.whaletech.co/2014/10/02/reference-vpc-architecture.html).