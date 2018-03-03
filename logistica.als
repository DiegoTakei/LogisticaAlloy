module logistica

sig Destino{}

sig Caminhao{
	pedido: some Pedido
}

sig Pedido{
	destino: one Destino
}

fact pedido{
	all p: Pedido | one p.~pedido
}

pred show[]{
}
run show for 3
