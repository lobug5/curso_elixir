defmodule FaturaTest do
  use ExUnit.Case
  doctest Fatura

  test "Deve criar uma lista de faturas" do
    faturas = Fatura.criar_fatura(["Agua", "Telefone", "Luz"])
    assert faturas == ["Agua", "Telefone", "Luz"]
  end

test "Deve ordenar uma lista de faturas" do
  faturas = Fatura.criar_fatura(["Agua", "Telefone", "Luz"])
  refute Fatura.ordena_fatura(faturas) == (["Agua", "Telefone", "Luz"])
end

test "Deve verificar se a conta existe" do
  assert Fatura.fatura_existe?(Fatura.criar_fatura(["Telefone", "Agua", "Luz"]), "Luz") == true
end

end
