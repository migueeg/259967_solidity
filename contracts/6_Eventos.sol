//SPDX-License-Identifier: GLP -3.0
pragma solidity >=0.8.2 <0.9.0;

contract Eventos{
    uint256 private cantidad = 10;

    event  cambioValorCantidad(address cuenta, uint256 nuevoValor);

    function cambiarCantidad(uint256 _cantidad) public{
        cantidad = _cantidad;
        emit cambioValorCantidad(msg.sender, _cantidad);
    }

    function obtenerCantidad() public view returns (uint256){
        return cantidad;
    }

}