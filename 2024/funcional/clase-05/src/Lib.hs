import Text.Show.Functions

data Personaje = UnPersonaje {
  nombre           :: String,
  poderBasico      :: PoderBasico,
  superPoder       :: SuperPoder,
  superPoderActivo :: Bool,
  cantidadDeVida   :: Int
} deriving Show

type PoderBasico = Personaje -> Personaje
type SuperPoder = String

bolaEspinosa :: PoderBasico
--bolaEspinosa unPersonaje = unPersonaje { cantidadDeVida = max 0 (cantidadDeVida unPersonaje - 1000) }
bolaEspinosa unPersonaje = modificarVida (max 0 . subtract 1000) unPersonaje

modificarVida :: (Int -> Int) -> Personaje -> Personaje
modificarVida unaFuncion unPersonaje = unPersonaje { cantidadDeVida = unaFuncion . cantidadDeVida $ unPersonaje }

modificarNombre :: (String -> String) -> Personaje -> Personaje
modificarNombre unaFuncion unPersonaje = unPersonaje { nombre = unaFuncion . nombre $ unPersonaje }

modificarPoderBasico :: (PoderBasico -> PoderBasico) -> Personaje -> Personaje
modificarPoderBasico unaFuncion unPersonaje = unPersonaje { poderBasico = unaFuncion . poderBasico $ unPersonaje }

-- Si quiero establecer un techo uso min
-- Si quiero establecer un piso uso max

espina :: Personaje
espina = UnPersonaje "Espina" bolaEspinosa "Granada de espinas" True 4800

{-
Patrones:
_
unParametro
(_, _, cantidadDePaginas)
(UnLibro _ _ cantidadDePaginas)
-}

lluviaDeTuercas :: String -> PoderBasico
--lluviaDeTuercas "Sanadora" unPersonaje = unPersonaje { cantidadDeVida = (+ 800) . cantidadDeVida $ unPersonaje }
--lluviaDeTuercas   "Dañina" unPersonaje = unPersonaje { cantidadDeVida = (`div` 2) . cantidadDeVida $ unPersonaje }
--lluviaDeTuercas  "Neutral" unPersonaje = ......
lluviaDeTuercas "Sanadora" unPersonaje = modificarVida (+ 800) unPersonaje
lluviaDeTuercas   "Dañina" unPersonaje = modificarVida (`div` 2) unPersonaje
lluviaDeTuercas          _ unPersonaje = unPersonaje

--lluviaDeTuercas tipoDeTuercas unPersonaje
--  | tipoDeTuercas == "Sanadora" = unPersonaje { cantidadDeVida = cantidadDeVida unPersonaje + 800 }
--  | tipoDeTuercas == "Dañina"   = unPersonaje { cantidadDeVida = div (cantidadDeVida unPersonaje) 2 }
--  | otherwise                   = unPersonaje

costoDeEntrada :: Int -> Int
costoDeEntrada unaEdad
  | unaEdad >= 18 = 1000
  | otherwise     = 0

-- factorial(0) = 1
-- factorial(1) = 1
-- factorial(n) = ...

pamela :: Personaje
pamela = UnPersonaje {
  nombre = "Pamela",
  poderBasico = lluviaDeTuercas "Sanadora",
--              ^^^^^^^^^^^^^^^ :: String -> Personaje -> Personaje
--              ^^^^^^^^^^^^^^^^^^^^^^^^^^ :: Personaje -> Personaje
  superPoder = "Torreta Curativa",
  superPoderActivo = False,
  cantidadDeVida = 9600
}

{-
Repositorio: "Album de fotos"
Repositorio remoto: "Copia del album en la nube"
Repositorio local:  "Copia del album en mi compu"

git status: "Ver el estado de la escena"
git add <path del archivo>: "Che archivo, ¡metete en la escena para la foto!"
git commit -m "Un nombre expresivo": "Sacar y nombrar la foto"
git push origin HEAD: "Subir los cambios del album en mi compu a la nube"
git pull: "Bajar los cambios del album en la nube a mi compu"
git log: "Mostrar el listado de fotos"
-}
