module Lib where

type Nombre = String
type Dia = Int
type Mes = String
type Fecha = (Dia, Mes)
type LugarDeFestejo = String
type Regalos = Int

type Cumple = (Nombre, Fecha, LugarDeFestejo, Regalos)

------------------ cumples -------------------
gus :: Cumple
gus = ("Gus", (8,"Marzo"), "El Bolson", 314)

vicky :: Cumple
vicky = ("Vicky", (13,"abril"), "plaza", 1000)

dia :: Cumple
dia = ("Dia", (14,"abril"), "Aula", 250)

rochi :: Cumple
rochi = ("Rochi", (14,"abril"), "Aula", 31)

orne :: Cumple
orne = ("Orne", (26, "abril"), "Parque aereo", 50)

cumples :: [Cumple]
cumples = [gus, vicky, dia, rochi, orne]

----------------- botin de regalos --------------------

botinDeRegalos :: [Cumple] -> Int
botinDeRegalos unosCumples = sum.regalosDe $ unosCumples

regalosDe :: [Cumple] -> [Int]
regalosDe unosCumples = map obtenerRegalosDe unosCumples

obtenerRegalosDe :: Cumple -> Int
obtenerRegalosDe (_,_,_, regalos) = regalos

----------------- es cumple inolvidable ----------------
esCumpleaniosInolvidable :: Cumple -> Bool
esCumpleaniosInolvidable unCumple = esDe "abril" unCumple || tuvoMuchosRegalos unCumple || fueDe "Gus" unCumple

fueDe :: Nombre -> Cumple -> Bool
fueDe unNombre unCumple = (== unNombre) . nombre $ unCumple 

nombre :: Cumple -> Nombre
nombre (unNombre,_,_,_) = unNombre

tuvoMuchosRegalos :: Cumple -> Bool
tuvoMuchosRegalos (_,_,_,regalos) = regalos > 400

esDe :: String -> Cumple -> Bool
esDe unMes festejo = (== unMes) . snd . fechaDeFestejo $ festejo

fechaDeFestejo :: Cumple -> Fecha
fechaDeFestejo (_,fecha,_,_) = fecha

----------------- es cumple navidenio ----------------

esCumpleNavidenio :: Cumple -> Bool
esCumpleNavidenio unCumple = esDe "diciembre" unCumple

----------------- requisitos indispensables  ----------------

type Requisito = (Cumple -> Bool)
requisitosIndispensables :: [Requisito]
requisitosIndispensables = [esDe "abril", fueDe "Dia'", tuvoMuchosRegalos]


--------------------------- Tematica ---------------------------

tematica :: Cumple -> String
tematica (_, _, "Aula", _) = "Educativo"
tematica (_, (_, "febrero"), _, _) = "San valentiniano"
tematica (_, _, _, 10) = "Liegero"
tematica _ = "Sin definir"