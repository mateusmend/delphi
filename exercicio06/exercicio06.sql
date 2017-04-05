SELECT V.IdVendedor, V.Nome, Sum(P.TotalPedido) FROM
  Vendedor AS V
  JOIN PedidoVenda AS P ON P.IdVendedor = V.IdVendedor
  WHERE P.DataInclusao BETWEEN TO_DATE('DD/MM/YYYY','01/08/2013') AND TO_DATE('DD/MM/YYYY','31/08/2013')

SELECT C.IdCliente, C.Nome, C.DataNascimento FROM
    Cliente AS C WHERE C.DataNascimento BETWEEN TO_DATE('DD/MM/YYYY','01/04/2017') AND TO_DATE('DD/MM/YYYY','30/04/2017')

SELECT C.Nome, C.CPF, C.DataCadastro FROM
    Cliente AS C
    Join PedidoVenda AS P ON P.IdCliente <> C.IdCliente
