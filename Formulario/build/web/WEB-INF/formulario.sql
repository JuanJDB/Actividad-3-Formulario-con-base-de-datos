/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Carlos Nevarez
 * Created: 25/08/2017
 */

CREATE DATABASE formulario;

USE formulario;

CREATE TABLE tablaDatos (
    Nombre VARCHAR(30),
    ApePaterno VARCHAR(30),
    ApeMaterno VARCHAR(30),
    Edad INT(3),
    Escuela VARCHAR(50)
);

DESCRIBE tablaDatos;

