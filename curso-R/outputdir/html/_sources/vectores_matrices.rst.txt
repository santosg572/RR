Vectores y Matrices en Matemàticas
==================================

Se define un vector como: :math:`(x_1, x_2, ..., x_n)` con :math:`x_i \in \mathbb{R}`

Decimos que :math:`x_1` es el primer elemento del vector, :math:`x_2` es el segundo elemento y así 
sucesivamente. El vector es de longitud :math:`n`.

Dados dos vectores de la misma longitud: :math:`\mathbf{v} = (x_1, x_2, ..., x_n)` y :math:`\mathbf{w} = (y_1, 
y_2, ..., y_n)` se define las siguientes operaciones:

1. :math:`\mathbf{v+w} = (x_1+ y_1, x_2+ y_2, ..., x_n+ y_n)`

2. Si :math:`c \in \mathbb{R}` entonces :math:`\mathbf{cv} = (cx_1, cx_2, ..., cx_n)`

Se define una matriz como:

.. math::

   \begin{pmatrix}
   a_{11} & a_{12}  & \cdots & a_{1n}  \\
   a_{21} & a_{22}  & \cdots & a_{2n}  \\
   \cdots  & \cdots & \cdots & \cdots  \\
   a_{m1} & a_{m2}  & \cdots & a_{mn}  \\
   \end{pmatrix}

Decimos que la matriz es de tamaño :math:`m \times n`.

Dadas dos matrices de tamaño :math:`m \times n` se define la operación:

.. math::

   \begin{pmatrix}
   a_{11} & a_{12}  & \cdots & a_{1n}  \\
   a_{21} & a_{22}  & \cdots & a_{2n}  \\
   \cdots  & \cdots & \cdots & \cdots  \\
   a_{m1} & a_{m2}  & \cdots & a_{mn}  \\
   \end{pmatrix} = \begin{pmatrix}
   b_{11} & b_{12}  & \cdots & b_{1n}  \\
   b_{21} & b_{22}  & \cdots & b_{2n}  \\
   \cdots  & \cdots & \cdots & \cdots  \\
   b_{m1} & b_{m2}  & \cdots & b_{mn}  \\
   \end{pmatrix} = \begin{pmatrix}
   a_{11}+b_{11} & a_{12}+b_{12}  & \cdots & a_{1n}+b_{1n}  \\
   a_{21}+b_{21} & a_{22}+b_{22}  & \cdots & a_{2n}+b_{2n}  \\
   \cdots  & \cdots & \cdots & \cdots  \\
   a_{m1}+b_{m1} & a_{m2}+b_{m2}  & \cdots & a_{mn}+b_{mn}  \\
   \end{pmatrix}

