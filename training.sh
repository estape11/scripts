# Execution
# Example > python3 Training.py Model Epoch BatchSize BatchSizeTest Steps ValidationSteps

echo ">> Starting..."
DIR="patrones"
if [ -d "$DIR" ]; then
	cd patrones
	git checkout EntrenamientoServidor
else
	# Clonacion
	git clone https://estape11:thekillers97@gitlab.com/debruynmonge/patrones.git
	cd patrones
	git checkout EntrenamientoServidor
fi

python3 Training.py 3 4 100 30 1000 200
git add * && git commit -m "Prueba 1.1" && git push origin EntrenamientoServidor
python3 Training.py 3 4 100 30 1000 200
git add * && git commit -m "Prueba 1.2" && git push origin EntrenamientoServidor
python3 Training.py 3 4 100 30 1000 200
git add * && git commit -m "Prueba 1.3" && git push origin EntrenamientoServidor
python3 Training.py 3 4 100 30 1000 200
git add * && git commit -m "Prueba 1.4" && git push origin EntrenamientoServidor

python3 Training.py 4 4 200 30 700 200
git add * && git commit -m "Prueba 2.1" && git push origin EntrenamientoServidor
python3 Training.py 4 4 200 30 700 200
git add * && git commit -m "Prueba 2.2" && git push origin EntrenamientoServidor

echo ">> Finished"