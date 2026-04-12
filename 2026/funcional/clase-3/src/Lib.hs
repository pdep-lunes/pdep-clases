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
dia = ("Dia", (14,"abril"), "Aula 407", 250)

rochi :: Cumple
rochi = ("Rochi", (14,"abril"), "Aula 407", 31)

orne :: Cumple
orne = ("Orne", (26, "abril"), "Parque aereo", 50)

nacho :: Cumple
nacho = ("nacho", (28, "septiembre"), "scape room", 22)

lu :: Cumple
lu = ("Lu", (2,"septiembre"), "Casa de lu", 150)

petru :: Cumple
petru = ("Petru",(28,"mayo"), "una tecno", 24)

cumples :: [Cumple]
cumples = [gus, vicky, dia, rochi, orne, nacho, lu, petru]
------------------ cumples -------------------

----------------- botin de regalos --------------------

botinDeRegalos :: [Cumple] -> Int
botinDeRegalos unosCumples = sum.regalosDe $ unosCumples

regalosDe :: [Cumple] -> [Int]
regalosDe unosCumples = map obtenerRegalosDe unosCumples

obtenerRegalosDe :: Cumple -> Int
obtenerRegalosDe (_,_,_, regalos) = regalos

----------------- botin de regalos --------------------

----------------- es cumple inolvidable ----------------
esCumpleaniosInolvidable :: Cumple -> Bool
esCumpleaniosInolvidable unCumple = esDelMes "abril" unCumple || tuvoMuchosRegalos unCumple || fueDeGus unCumple

fueDeGus :: Cumple -> Bool
fueDeGus (unNombre,_,_,_) = unNombre == "Gus"

tuvoMuchosRegalos :: Cumple -> Bool
tuvoMuchosRegalos (_,_,_,regalos) = regalos > 400

esDelMes :: String -> Cumple -> Bool
esDelMes unMes festejo = (== unMes) . snd . fechaDeFestejo $ festejo

fechaDeFestejo :: Cumple -> Fecha
fechaDeFestejo (_,fecha,_,_) = fecha

----------------- es cumple inolvidable ----------------

----------------- hay cumples navideños -----------------
hayCumpleaniosNavidenios :: [Cumple] -> Bool
hayCumpleaniosNavidenios unosCumples = any cumpleNavidenio unosCumples

cumpleNavidenio :: Cumple -> Bool
cumpleNavidenio unCumple = esDelMes "diciembre" unCumple
----------------- hay cumples navideños -----------------

--------------------- frase secreta -----------------------
fraseSecreta :: [Cumple] -> String
fraseSecreta festejos = ("La frase es " ++ ) . soloVocales . concatenarNombres $ festejos

concatenarNombres :: [Cumple] -> String
concatenarNombres festejos = concatMap obtenerNombreDe festejos

obtenerNombreDe :: Cumple -> Nombre
obtenerNombreDe (unNombre,_,_,_) = unNombre

soloVocales :: String -> String
soloVocales unString = filter esVocal unString

esVocal :: Char -> Bool
esVocal unaLetra = elem unaLetra "aeiouAEIOU"
--------------------- frase secreta -----------------------