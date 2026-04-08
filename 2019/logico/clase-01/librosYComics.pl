esComic(sandman).
esComic(watchmen).
esComic(100balas).
esComic(planetary).
esComic(elCaballeroOscuroRegresa).
esComic(batmanAnioUno).

esLibro(americanGods).
esLibro(fundacion).
esLibro(yoRobot).
esLibro(elFinDeLaEternidad).
esLibro(laBusquedaDeLosElementos).
esLibro(martinFierro).
esLibro(it).
esLibro(misery).
esLibro(carrie).
esLibro(elJuegoDeGerald).
esLibro(harryPotterYLaPiedraFilosofal).
esLibro(harryPotterYLasReliquiasDeLaMuerte).
esLibro(unaVacanteInesperada).
esLibro(ficciones).
esLibro(elAleph).
esLibro(socorro).
esLibro(sinceramente).
esLibro(cuentosDeLaSelva).
esLibro(cuentosDeLocuraAmorYMuerte).

escribio(neilGaiman, sandman).
escribio(alanMoore, watchmen).
escribio(brianAzarello, 100balas).
escribio(warrenEllis, planetary).
escribio(frankMiller, elCaballeroOscuroRegresa).
escribio(frankMiller, batmanAnioUno).
escribio(neilGaiman, americanGods).
escribio(isaacAsimov, fundacion).
escribio(isaacAsimov, yoRobot).
escribio(isaacAsimov, elFinDeLaEternidad).
escribio(isaacAsimov, laBusquedaDeLosElementos).
escribio(joseHernandez, martinFierro).
escribio(stephenKing, it).
escribio(stephenKing, misery).
escribio(stephenKing, carrie).
escribio(stephenKing, elJuegoDeGerald).
escribio(jKRowling, harryPotterYLaPiedraFilosofal).
escribio(jKRowling, harryPotterYLasReliquiasDeLaMuerte).
escribio(jKRowling, unaVacanteInesperada).
escribio(jorgeLuisBorges, ficciones).
escribio(jorgeLuisBorges, elAleph).
escribio(elsaBornemann, socorro).
escribio(cristinaFernandezDeKirchner, sinceramente).
escribio(horacioQuiroga, cuentosDeLaSelva).
escribio(horacioQuiroga, cuentosDeLocuraAmorYMuerte).

esDeArgentina(joseHernandez).
esDeArgentina(jorgeLuisBorges).
esDeArgentina(elsaBornemann).
esDeArgentina(cristinaFernandezDeKirchner).
esDeUruguay(horacioQuiroga).
escribeEnRioDeLaPlata(AutorOAutora) :-
	escribio(Libro, AutorOAutora),
	esDeUruguay(AutorOAutora).

escribeEnRioDeLaPlata(AutorOAutora) :-
	escribio(Libro, AutorOAutora),
	esDeArgentina(AutorOAutora).

escribeEnRioDeLaPlata(AutorOAutora) :-
	escribio(Libro, AutorOAutora),
	esDelRioDeLaPlata(AutorOAutora).

esDelRioDeLaPlata(AutorOAutora) :-
	esDeArgentina(AutorOAutora).

esDelRioDeLaPlata(AutorOAutora) :-
	esDeUruguay(AutorOAutora).

escribeEnRioDeLaPlata(AutorOAutora) :-
	escribio(_, AutorOAutora),
	esDelRioDeLaPlata(AutorOAutora).

Que elles hagan esVersatil/1:

esVersatil(AutorOAutora) :-
	escribio(Libro, AutorOAutora),
	escribio(Comic, AutorOAutora),
	esLibro(Libro),
	esComic(Comic).

Que también hagan valeLaPena/1:

valeLaPena(lectura):-
	escribio(neilGaiman, lectura).

valeLaPena(lectura):-
	esLibro(lectura).